class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :author, :content, :category_id, :image, :youtube, :created_at
end