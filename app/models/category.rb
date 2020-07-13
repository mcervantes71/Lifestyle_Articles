class Category < ApplicationRecord
  belongs_to :article

  validates :category_name, length: { in: 4..15 }, presence: true

  scope :ordered, -> { order(created_at: :desc) }
end
