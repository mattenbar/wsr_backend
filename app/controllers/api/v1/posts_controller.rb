class Api::V1::PostsController < ApplicationController
  skip_before_action :require_login

  def index
    posts = Post.all
    render json: {post: PostSerializer.new(posts)}
  end

  def show
    post = Post.find(params[:id])
    render json: {post: PostSerializer.new(post)}
  end

  def image_upload
    byebug
    post = Post.find_by(title: (params["title"]))
    # byebug
    file_url = Cloudinary::Uploader.upload(params[:image])
    post.image = file_url["url"]
    
    if post.save
        render json: post
    else
        render json: {error: "Unable to save image at this time"}
    end
  end

  def create
    post = Post.create(post_params)
    # byebug
    # file_url = Cloudinary::Uploader.upload(params[:image], options = {})
    # post.image = file_url["url"]
    if post.valid?
      # render json: {post: PostSerializer.new(post)}  #there's something wrong with the serializer // not working
      render json: post # this works though
    else
      render json: {error: 'Unable to create post'}
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
    params.require(:post).permit(:id, :category_id, :title, :content, :author, :image)
  end

end
