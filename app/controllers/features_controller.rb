class FeaturesController < ApplicationController
  skip_before_action :require_login
  
  def index
    features = Feature.all.sort
    render json: {feature: FeatureSerializer.new(features)}
  end

  def show
    feature = Feature.find(params[:id])
    render json: {feature: FeatureSerializer.new(feature)}
  end

  def update
    feature = Feature.find(params["id"])
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

  def feature_params
    params.require(:feature).permit(:id, :post_id, :name)
  end

end
