class Category < ApplicationRecord
  has_many: posts
  validates: name
end
