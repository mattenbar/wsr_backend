class PointcpsController < ApplicationController
  skip_before_action :require_login

  def index
    posts = Pointcp.all
    render json: {pointcp: PointcpSerializer.new(posts)}
  end

  def show
    post = Post.find(params[:id])
    render json: {post: PostSerializer.new(post)}
  end
end
