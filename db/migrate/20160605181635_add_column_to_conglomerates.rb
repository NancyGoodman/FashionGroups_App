class AddColumnToConglomerates < ActiveRecord::Migration
  def change
    add_column :conglomerates, :director, :string
  end
end
