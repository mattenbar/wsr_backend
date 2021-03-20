class FeatureSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name
end
