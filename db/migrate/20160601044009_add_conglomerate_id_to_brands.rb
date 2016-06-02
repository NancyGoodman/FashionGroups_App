class AddConglomerateIdToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :conglomerate_id, :integer
  end
end
