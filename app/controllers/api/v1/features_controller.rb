class Api::V1::FeaturesController < ApplicationController
  skip_before_action :require_login
  
  def index
    features = Feature.all
    render json: {feature: FeatureSerializer.new(features)}
  end

  def show
    feature = Feature.find(params[:id])
    post = feature.post
    render json: {feature: FeatureSerializer.new(feature), post: PostSerializer.new(post)}
  end

end
