class PointcpSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :titleOne, :authorOne, :contentOne, :imageOne, :youtubeOne, :votesOne, :titleTwo, :authorTwo, :contentTwo, :imageTwo, :youtubeTwo, :votesTwo, :created_at
end
