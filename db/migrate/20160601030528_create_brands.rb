class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :house
      t.string :head_designer

      t.timestamps null: false
    end
  end
end
