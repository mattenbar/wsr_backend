class PointcpSerializer
  include FastJsonapi::ObjectSerializer
  attributes :titleOne, :authorOne, :contentOne, :imageOne, :titleTwo, :authorTwo, :contentTwo, :imageTwo, :created_at, :pointcpvotes, :topic, :end_date
end
