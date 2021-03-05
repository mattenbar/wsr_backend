class Api::V1::PostsController < ApplicationController

  def index
    posts = Post.all
    render json: {post: PostSerializer.new(posts)}
  end

  def show
    post = Post.find(params[:id])
    render json: {post: PostSerializer.new(post)}
  end

  def create
    post = Post.new(post_params)
    if post.save
      render json: {post: PostSerializer.new(post)}
    else
      render json: {error: 'Unable to creat post'}
    end

  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    posts = Post.all
    render json: {post: PostSerializer.new(posts)}
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    posts = Post.all
    render json: {post: PostSerializer.new(posts)}

  end

  private


  def post_params
    params.require(:post).permit(:id, :category_id, :title, :content, :author)
  end

end
