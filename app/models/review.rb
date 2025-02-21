class Review < ApplicationRecord
  belongs_to :vehicle

  RATING_VALUES = (1..5)

  validates :rating, inclusion: { in: RATING_VALUES }, presence: true, numericality: { only_integer: true }
  validates :content, length: { in: 5..100 }, presence: true
end
