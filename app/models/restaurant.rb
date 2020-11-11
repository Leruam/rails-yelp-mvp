class Restaurant < ApplicationRecord
  REST_CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: REST_CATEGORY, message: "It's not a valid category" }
end
