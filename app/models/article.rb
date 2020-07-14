class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :votes, dependent: :destroy
  has_many :categories, dependent: :destroy
  accepts_nested_attributes_for :categories

  validates :author_id, presence: true
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
    Article.ordered.where(categories: Category.group(:category_name))
  end
end
