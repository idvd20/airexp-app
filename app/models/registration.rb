class Registration < ApplicationRecord
  belongs_to :experience

  validates :name, presence: true
  validates :email, format: {with: /\S+@\S+/}
  STARS = (1..5).to_a
  validates :stars, inclusion: {in: STARS, message: "must be between 1 and 5"} 
end
