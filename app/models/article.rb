class Article < ApplicationRecord
  validates :title, presence: true, length: {maximum: 100, minimum: 5}
  validates :description, presence: true
end