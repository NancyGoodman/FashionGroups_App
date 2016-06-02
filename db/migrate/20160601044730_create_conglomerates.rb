class CreateConglomerates < ActiveRecord::Migration
  def change
    create_table :conglomerates do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
