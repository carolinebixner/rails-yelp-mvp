class Restaurant < ApplicationRecord
  VALID_CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates_inclusion_of :category, in: VALID_CATEGORIES
end
