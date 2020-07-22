require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:article) { Article.new }

  describe 'New article validations' do
    it 'Article no title' do
      article.title = nil
      article.valid?
      expect(article.errors[:title]).to include('can\'t be blank')
    end

    it 'Not valid if the article exceeds limit ' do
      article.title = 'this is a very long tape' * 2000
      article.valid?
      expect(article.errors[:title]).to include('is too long (maximum is 30 characters)')
    end

    it 'Article title validation' do
      article.title = 'test'
      article.valid?
      expect(article.errors[:title]).to_not include('can\'t be blank')
    end

    it 'Article no body' do
      article.text = nil
      article.valid?
      expect(article.errors[:text]).to include('can\'t be blank')
    end

    it 'Article title validation' do
      article.text = 'test'
      article.valid?
      expect(article.errors[:text]).to_not include('can\'t be blank')
    end

    it 'Article no image' do
      article.image = nil
      article.valid?
      expect(article.errors[:image]).to include('can\'t be blank')
    end
  end
end
