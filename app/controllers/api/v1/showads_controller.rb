class Api::V1::ShowadsController < ApplicationController
  skip_before_action :require_login

  def index
    showads = Showad.all
    render json: {showads: ShowadSerializer.new(showads)}
  end
  
  def show
    showad = Showad.find(params[:id])
    render json: {showad: ShowadSerializer.new(showad)}
  end

  private 

  def showad_params
    params.require(:showad).permit(:id, :ad_id, :name)
  end

end
