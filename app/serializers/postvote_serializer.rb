class PostvoteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :like, :dislike, :post_id, :user_id
end
