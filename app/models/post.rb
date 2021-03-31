class Post < ApplicationRecord
  belongs_to :category
  has_one :feature
  has_many :postvotes
  
  validates :title, :author, :content, :category_id, :image, presence: true
end
