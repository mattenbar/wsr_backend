class Pointcpvote < ApplicationRecord
    belongs_to :user
    belongs_to :pointcp

    validates :pointcp_id, :user_id, presence: true
end
