class ShowadsController < ApplicationController
  skip_before_action :require_login

  def index
    showads = Showad.all.sort
    render json: {showads: ShowadSerializer.new(showads)}
  end
  
  def show
    showad = Showad.find(params[:id])
    render json: {showad: ShowadSerializer.new(showad)}
  end

  def update
    showad = Showad.find(params["id"])
    showad.update(showad_params)
    if showad.valid?
      showad.save
      render json: {
        showad: showad,
        success: "showad Updated Successfully"
      }
    else
      render json: {errors: showad.errors.full_messages}
    end
  end

  private 

  def showad_params
    params.require(:showad).permit(:id, :ad_id, :name)
  end

end
