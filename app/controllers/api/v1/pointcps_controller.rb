class Api::V1::PointcpsController < ApplicationController
  skip_before_action :require_login

  def index
    pointcps = Pointcp.all.sort_by{ |pointcp| pointcp[:id] }
    render json: {pointcps: PointcpSerializer.new(pointcps)}
  end

  def show
    pointcp = Pointcp.find(params[:id])
    # byebug
    articleOneVotes = pointcp.pointcpvotes.where(articleOneVote: 1).count
    articleTwoVotes = pointcp.pointcpvotes.where(articleTwoVote: 1).count
    if articleOneVotes > articleTwoVotes
      winner = pointcp.authorOne 
    elsif articleTwoVotes > articleOneVotes
      winner = pointcp.authorTwo
    else 
      winner = "It's A Tie!"
    end
    render json: {
      pointcp: PointcpSerializer.new(pointcp),
      articleOneVotes: articleOneVotes,
      articleTwoVotes: articleTwoVotes,
      winner: winner
    }
  end

  def image_upload
    # byebug
    # foo.kind_of?(String)
    if params[:imageOne] != nil && params[:imageTwo] != nil
      file_url_one = Cloudinary::Uploader.upload(params[:imageOne])
      imageOne = file_url_one["url"]
      file_url_two = Cloudinary::Uploader.upload(params[:imageTwo])
      imageTwo = file_url_two["url"]
      # byebug
      if imageOne && imageTwo
          render json: {imageOne: imageOne, imageTwo: imageTwo}
      else
          render json: {error: "Unable to save image at this time"}
      end

    elsif params[:imageOne] != nil  && params[:imageTwo] == nil
      file_url_one = Cloudinary::Uploader.upload(params[:imageOne])
      imageOne = file_url_one["url"]
      if imageOne
          render json: {imageOne: imageOne}
      else
          render json: {error: "Unable to save image at this time"}
      end


    elsif params[:imageOne] == nil  && params[:imageTwo] != nil
      file_url_two = Cloudinary::Uploader.upload(params[:imageTwo])
      imageTwo = file_url_two["url"]
      if imageTwo
          render json: {imageTwo: imageTwo}
      else
          render json: {error: "Unable to save image at this time"}
      end

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

    pointcp.update(pointcp_params)

    if pointcp.valid?
      render json: {
        pointcp: PointcpSerializer.new(pointcp),
        success: "PointCP Updated Successfully"
      }
    else
      render json: {error: 'Unable To Update PointCP At This Time'}
    end

  end

  def destroy
    pointcp = Pointcp.find_by(id: params["id"])

    if pointcp.destroy
      pointcps = Post.all
      render json: {
        pointcps: PostSerializer.new(pointcps),
        success: "Post Was Successfully Deleted"
      }
    else
      render json: {
        pointcps: PostSerializer.new(pointcps),
        error: "Unable To Delete Post At This Time"
      }
    end
  end

  private


  def pointcp_params
    params.require(:pointcp).permit(:id, :titleOne, :contentOne, :authorOne, :imageOne, :titleTwo, :contentTwo, :authorTwo, :imageTwo, :topic, :end_date)
  end


end
