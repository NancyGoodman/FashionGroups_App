class Brand < ActiveRecord::Base
  belongs_to :conglomerate

  has_many :brand_categories
  has_many :categories, through: :brand_categories

  validates :house, presence: true, uniqueness: {case_sensitive: false}
end
