class Post < ApplicationRecord
  belongs_to :category
  has_one :feature
  validates :title, :author, :content, :category_id, :image, presence: true
end
