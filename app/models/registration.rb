class Registration < ApplicationRecord
  belongs_to :experience
  belongs_to :user 

  STARS = (1..5).to_a
  validates :stars, inclusion: {in: STARS, message: "must be between 1 and 5"} 

  def stars_as_percent
    (stars / 5.0) * 100.0
  end
end
