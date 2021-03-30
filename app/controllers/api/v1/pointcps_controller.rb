class Api::V1::PointcpsController < ApplicationController
  skip_before_action :require_login

  def index
    pointcps = Pointcp.all.sort_by{ |pointcp| pointcp[:id] }
    render json: {pointcp: PointcpSerializer.new(pointcps)}
  end

  def show
    pointcp = Pointcp.find(params[:id])
    render json: {pointcp: PointcpSerializer.new(pointcp)}
  end

  def image_upload

    file_url_one = Cloudinary::Uploader.upload(params[:imageOne])
    imageOne = file_url_one["url"]
    file_url_two = Cloudinary::Uploader.upload(params[:imageTwo])
    imageTwo = file_url_two["url"]
    if imageOne && imageTwo
        render json: {imageOne: imageOne, imageTwo: imageTwo}
    else
        render json: {error: "Unable to save image at this time"}
    end
  end

  def create
    pointcp = Pointcp.create(pointcp_params)
    
    if pointcp.valid?
      render json: {pointcp: PointcpSerializer.new(pointcp)}  
    else
      render json: {error: 'Unable to create pointcp article'}
    end

  end

  def update
    # byebug
    pointcp = Pointcp.find_by(id: params["id"])
    # byebug
    if params["votesPointCPOne"] != nil
      pointcp.update(votesPointCPOne: params["votesPointCPOne"])
    end

    if params["votesPointCPTwo"] != nil
      pointcp.update(votesPointCPTwo: params["votesPointCPTwo"])
    end

    if pointcp.valid?
      render json: {pointcp: PointcpSerializer.new(pointcp)}
    else
      render json: {error: 'Unable To Vote At This Time'}
    end

  end

  private


  def pointcp_params
    params.require(:pointcp).permit(:id, :titleOne, :contentOne, :authorOne, :imageOne, :votesPointCPOne, :titleTwo, :contentTwo, :authorTwo, :imageTwo, :votesPointCPTwo)
  end


end
