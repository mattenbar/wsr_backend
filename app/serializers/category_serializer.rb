class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :posts
end
