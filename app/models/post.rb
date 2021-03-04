class Post < ApplicationRecord
  belongs_to :category
  validates :title, :author, :content, :category
end
