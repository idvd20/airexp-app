class Registration < ApplicationRecord
  belongs_to :experience

  validates :name, presence: true
  validates :email, format: {with: /\S+@\S+/}
end
