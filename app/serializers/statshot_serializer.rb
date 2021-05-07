class StatshotSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :image, :created_at
end