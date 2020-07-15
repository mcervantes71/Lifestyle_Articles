class Category < ApplicationRecord
  has_many :articles, dependent: :destroy

  validates :category_name, length: { in: 4..15 }, presence: true
end
