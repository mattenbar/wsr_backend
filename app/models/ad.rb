class Ad < ApplicationRecord
has_one :showad
validates :title, :company, :image, :link, presence: true
end
