class Statshot < ApplicationRecord
  validates :content, :image, presence: true
end

