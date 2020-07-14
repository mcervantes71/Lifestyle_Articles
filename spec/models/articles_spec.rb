require 'rails_helper'

RSpec.describe Articles, type: :model do
  let(:invalid_article) { FactoryBot.build(:article, :invalid_article) }

  describe 'validations for article model' do
    it 'is not valid if the article exceeds limit ' do
      should_not allow_value('this is a very long tape' * 20).for(:content)
    end

    it 'is not valid without a user' do
      should_not allow_value(invalid_article.user).for(:user)
    end
  end

  describe 'associations' do
    it 'belongs to user' do
      should belong_to(:user)
    end
  end
end
