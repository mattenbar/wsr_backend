class Postvote < ApplicationRecord
    belongs_to :user
    belongs_to :post

    validates :post_id, :user_id, presence: true
end
