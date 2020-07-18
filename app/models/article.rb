class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :categorization, dependent: :destroy
  has_many :categories, through: :categorization
  has_many :votes, dependent: :destroy

  validates :title, length: { in: 4..30 }, presence: true, uniqueness: true
  validates :text, length: { in: 4..255 }, presence: true
  validates :image, length: { in: 4..255 }, presence: true

  scope :ordered, -> { order(created_at: :desc) }

  def self.featured
    totals = Article.joins(:votes).group(:id).count
    article = totals.max_by { |_id, total| total }

    if article.nil?
      Article.first
    else
      Article.find(article[0])
    end
  end

  def self.recents
    articles = [Article.where(category_id: 1).ordered.first]
    articles << Article.where(category_id: 2).ordered.first
    articles << Article.where(category_id: 3).ordered.first
    articles << Article.where(category_id: 4).ordered.first
  end
end
