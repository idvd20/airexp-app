class User < ApplicationRecord
  before_save :format_username
  before_save {self.email = email.downcase}

  has_secure_password

  has_many :registrations, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_experiences, through: :likes, source: :experience
  
  validates :name, presence: true
  validates :email, format: {with: /\S+@\S+/}, uniqueness: {case_sensitive: false}
  validates :username, presence: true, format: { with: /\A[A-Z0-9]+\z/i }, uniqueness: { case_sensitive: false }

  scope :by_name, -> { order(:name) }
  scope :not_host, -> { by_name.where(host: false) }

  def format_username
    self.username = username.downcase
  end
end