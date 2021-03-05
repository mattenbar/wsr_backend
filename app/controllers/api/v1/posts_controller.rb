class Api::V1::PostsController < ApplicationController

  def index
    posts = Post.all
    render json: {post: PostSerializer.new(posts)}
  end

  def show
    post = Post.find(params[:id])
    render json: {post: PostSerializer.new(post)}
  end

end
