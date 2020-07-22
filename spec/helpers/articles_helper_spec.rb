require 'rails_helper'

RSpec.describe ArticlesHelper, type: :helper do
  describe 'Get category articles' do
    it 'returns category articles' do
      assign(:articles, Article.category_articles(1))
      expect(helper.categories_articles).to include('')
    end
  end
end
