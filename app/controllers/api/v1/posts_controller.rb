class Api::V1::PostsController < ApplicationController
  skip_before_action :require_login

  def index
    posts = Post.all.sort
    render json: {post: PostSerializer.new(posts)}
  end
  def show
    # byebug
    post = Post.find(params[:id])
    render json: {post: PostSerializer.new(post)}
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
    post = Post.create(post_params)

    if post.valid?
      render json: {
        post: PostSerializer.new(post),
        success: "Post Created Successfully"
      }  
    else
      render json: {errors: post.errors.full_messages}
    end
  end

  def update
    # byebug
    post = Post.find(params["post"]["id"])
    post.update(post_params)
    if post.valid?
      post.save
      render json: {
        post: post,
        success: "Post Updated Successfully"
      }
    else
      render json: {errors: post.errors.full_messages}
    end
  end

  def destroy
    post = Post.find(params[:id])
    if post.destroy
      posts = Post.all
      render json: {
        posts: PostSerializer.new(posts),
        success: "Post Was Successfully Deleted"
      }
    else
      render json: {
        posts: PostSerializer.new(posts),
        error: "Unable To Delete Post At This Time"
      }
    end
  end

  private

    def post_params
      params.require(:post).permit(:id, :category_id, :title, :content, :author, :image, :feature_id)
    end

  end