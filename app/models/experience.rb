class Experience < ApplicationRecord
    before_save :set_slug

    has_many :registrations, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :likers, through: :likes, source: :user

    validates :title, uniqueness: true, presence: true
    validates :location, presence: true
    validates :description, length: {minimum:25}
    validates :price, numericality: {greater_than_or_equal_to: 0}
    validates :capacity, numericality: {only_integer: true, greater_than: 0}
    validates :image_file_name, format: { with: /\w+\.(jpg|png|jpeg)\z/i, message: "must be a JPG, JPEG, or PNG image" }
    

    scope :past, -> { where("starts_at < ?", Time.now).order("starts_at") }
    scope :upcoming, -> { where("starts_at > ?", Time.now).order("starts_at") }
    scope :free, -> { upcoming.where(price: 0.0).order(:name) }

    def free?
        price.zero? || price.blank?
    end
    
    def sold_out?
        (capacity - registrations.size).zero?
    end

    def average_stars
        registrations.average(:stars) || 0.0
    end

    def average_stars_as_percent
        (self.average_stars / 5.0) * 100
    end

    def to_param
        slug
    end

    private
        def set_slug
            self.slug = title.parameterize
        end
end
