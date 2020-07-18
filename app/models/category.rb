class Category < ApplicationRecord
  has_many :categorization
  has_many :articles, through: :categorization

  validates :category_name, length: { in: 4..15 }, presence: true, uniqueness: true

  scope :ordered, -> { order(created_at: :desc) }
end
