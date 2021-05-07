class StatshotsController < ApplicationController
  skip_before_action :require_login

  def latest
    statshot = Statshot.order("created_at").last
    render json: {statshot: StatshotSerializer.new(statshot)}
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
    statshot = Statshot.create(statshot_params)

    if statshot.valid?
      render json: {
        statshot: StatshotSerializer.new(statshot),
        success: "Statshot Created Successfully"
      }  
    else
      render json: {errors: statshot.errors.full_messages}
    end
  end

  def update
    statshot = Statshot.find(params["statshot"]["id"])
    statshot.update(statshot_params)


    if statshot.valid?
      statshot.save
      render json: {
          statshot: statshot,
          success: "Statshot Updated Successfully"
      }
    else
      render json: {errors: statshot.errors.full_messages}
    end
  end

  private

    def statshot_params
      params.require(:statshot).permit(:id, :content, :image)
    end

  end