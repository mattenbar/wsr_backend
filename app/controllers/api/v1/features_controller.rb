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

  def update
    # byebug
    feature = Feature.find(params["feature"]["id"])
    feature.update(feature_params)
    if feature.valid?
      feature.save
      render json: {
        feature: feature,
        success: "feature Updated Successfully"
      }
    else
      render json: {errors: feature.errors.full_messages}
    end
  end

  private

  def post_params
    params.require(:feature).permit(:id, :post_id, :name)
  end

end
