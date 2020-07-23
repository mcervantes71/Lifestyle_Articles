class AddIndexToCategory < ActiveRecord::Migration[6.0]
  def change
    remove_column :categories, :category_name
    add_column :categories, :category_name, :string
    add_index :categories, :category_name, unique: true
  end
end
