class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating { in: [1..5], allow_nil: false } presence: true
end
