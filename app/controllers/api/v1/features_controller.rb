class Api::V1::FeaturesController < ApplicationController
  skip_before_action :require_login
  
  def index
    features = Feature.all
    render json: {feature: FeatureSerializer.new(features)}
  end

  def show
    feature = Feature.find(params[:id])
    posts = feature.posts
    render json: {feature: FeatureSerializer.new(feature), posts: PostSerializer.new(posts)}
  end

end
