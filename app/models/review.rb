class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  # validates :rating, inclusion: { in: POSSIBLE_RATINGS,
  # message: "It's not a valid rating, should be between 0 and 5" }

  # validates :rating, presence: true, if: :number_btw_0_5?(:rating)

  # def number_btw_0_5?(rating)
  #   rating >= 0 && rating <= 5
  # end
end
