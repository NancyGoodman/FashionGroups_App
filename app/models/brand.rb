class Brand < ActiveRecord::Base
  belongs_to :conglomerate

  has_many :brand_categories
  has_many :categories, through: :brand_categories

  has_attached_file :photo, :styles => { :thumb => "100x100>", :medium => "250x250>", :small => "150x150>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  has_attached_file :logo, :styles => { :thumb => "100x100>", :medium => "250x250>", :small => "150x150>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/

  # validates :house, presence: true, uniqueness: {case_sensitive: false}
end
