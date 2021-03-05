class Api::V1::PostsController < ApplicationController

  def index
    posts = Post.all
    render json: {post: PostSerializer.new(posts)}
  end
end
