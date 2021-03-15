class Api::V1::CategoriesController < ApplicationController
  skip_before_action :require_login

  def index
    categories = Category.all
    render json: {category: CategorySerializer.new(categories)}
  end

  def show
    category = Category.find(params[:id])
    posts = category.posts
    render json: {category: CategorySerializer.new(category), posts: PostSerializer.new(posts)}
  end
end
