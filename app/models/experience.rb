class Experience < ApplicationRecord

    def self.upcoming
        where("starts_at > ?", Time.now).order("starts_at")
    end

    def self.past
        where("starts_at < ?", Time.now).order("starts_at")
    end

    def free?
        price.zero? || price.blank?
    end
    
end
