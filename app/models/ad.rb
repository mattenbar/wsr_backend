class Ad < ApplicationRecord
validates :title, :company, :image, :link, presence: true
end
