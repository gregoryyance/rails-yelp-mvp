class Restaurant < ApplicationRecord

  has_many :reviews, dependent: :destroy
  
  validates :scategory, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true

end
