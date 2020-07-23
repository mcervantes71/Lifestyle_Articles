class RemoveIdArticleFromCatergory < ActiveRecord::Migration[6.0]
  def change
    remove_column :categories, :article_id
  end
end
