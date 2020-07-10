class Category < ApplicationRecord
  belongs_to :article

  validates :name, length: { in: 4..15 }, presence: true, uniqueness: true
end
