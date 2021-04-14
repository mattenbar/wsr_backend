class AdsController < ApplicationController
  skip_before_action :require_login

  def index
    ads = Ad.all
    render json: {ad: AdSerializer.new(ads)}
  end

  def show
    ad = Ad.find(params[:id])
    render json: {ad: AdSerializer.new(ad)}
  end

  def image_upload
    byebug
    file_url = Cloudinary::Uploader.upload(params[:image])
    image = file_url["url"]
    if image
        render json: {image: image}
    else
        render json: {error: "Unable to save image at this time"}
    end
  end

  def create
    ad = Ad.create(ad_params)
    
    if ad.valid?
      render json: {ad: AdSerializer.new(ad)}  
    else
      render json: {error: 'Unable to create ad'}
    end
  end



  private


  def ad_params
    params.require(:ad).permit(:id, :title, :company, :image, :link )
  end
end
