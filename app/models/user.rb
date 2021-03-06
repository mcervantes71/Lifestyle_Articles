class User < ApplicationRecord
  has_many :articles, foreign_key: :author_id, dependent: :destroy
  has_many :votes, dependent: :destroy

  devise :database_authenticatable, :registerable

  validates :name, presence: true
  validates :username, length: { in: 4..15 }, presence: true, uniqueness: true
  validates :password, length: { in: 6..128 }, presence: true
  validates :password, confirmation: { case_sensitive: true }

  def self.users_list
    User.joins(:articles).select('users.id, COUNT(articles.id) AS counter').group('users.id')
  end

  def self.user_articles_list(id)
    Article.where(author_id: id).joins(:votes).select('articles.id, COUNT(articles.id) AS counter').group('articles.id')
  end
end
