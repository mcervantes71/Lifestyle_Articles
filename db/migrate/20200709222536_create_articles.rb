class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.integer :author_id
      t.string :title
      t.text :text
      t.string :image

      t.timestamps
    end
    add_index :articles, :title, unique: true
  end
end