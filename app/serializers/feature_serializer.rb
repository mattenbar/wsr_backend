class FeatureSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :post_id, :post
end
