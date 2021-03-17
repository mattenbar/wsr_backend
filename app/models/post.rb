class Post < ApplicationRecord
  belongs_to :category
  validates :title, :author, :content, :category_id, :image, presence: true
end
