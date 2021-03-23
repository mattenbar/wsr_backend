class Api::V1::PointcpsController < ApplicationController
  skip_before_action :require_login

  def index
    pointcps = Pointcp.all
    render json: {pointcp: PointcpSerializer.new(pointcps)}
  end

  def show
    pcp = Pointcp.find(params[:id])
    render json: {pointcp: PointcpSerializer.new(pcp)}
  end

  def image_upload
    file_url = Cloudinary::Uploader.upload(params[:image])
    image = file_url["url"]
    if image
        render json: {image: image}
    else
        render json: {error: "Unable to save image at this time"}
    end
  end

  def create
    pcp = Pointcp.create(pcp_params)
    
    if pcp.valid?
      render json: {pcp: PointcpSerializer.new(pcp)}  
    else
      render json: {error: 'Unable to create pcp article'}
    end

  end

  private


  def pcp_params
    params.require(:pcp).permit(:id, :titleOne, :contentOne, :authorOne, :imageOne, :titleTwo, :contentTwo, :authorTwo, :imageTwo)
  end


end
