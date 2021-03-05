class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :author, :content, :category_id, :created_at
end