class Category < ActiveRecord::Base

  has_many :brand_categories
  has_many :brands, through: :brand_categories

  # validates :house, presence: true, uniqueness: true
end
