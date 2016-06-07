class AddAttachmentPhotoToBrands < ActiveRecord::Migration
  def self.up
    change_table :brands do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :brands, :photo
  end
end
