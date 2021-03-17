class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :author, :content, :category_id, :image, :created_at
end