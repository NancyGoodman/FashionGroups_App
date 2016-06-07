class Conglomerate < ActiveRecord::Base
  has_many :brands

  has_attached_file :photo, :styles => { :thumb => "100x100>", :medium => "250x250>", :small => "150x150>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

end
