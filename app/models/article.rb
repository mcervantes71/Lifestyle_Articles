class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'

  validates :author_id, presence: true
  validates :title, length: { in: 4..30 }, presence: true, uniqueness: true
  validates :text, length: { in: 4..255 }, presence: true
  validates :image, length: { in: 4..255 }, presence: true
end
