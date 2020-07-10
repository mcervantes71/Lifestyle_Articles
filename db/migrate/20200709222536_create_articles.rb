class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.integer :author_id,    null: false
      t.string :title,         null: false, default: ''
      t.text :text,            null: false, default: ''
      t.string :image,         null: false, default: ''

      t.timestamps
    end

    add_index :articles, :title, unique: true
  end
end
