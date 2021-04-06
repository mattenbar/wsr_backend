class CategoriesController < ApplicationController
  skip_before_action :require_login

  def index
    categories = Category.all
    render json: {category: CategorySerializer.new(categories)}
  end

  def show
    category = Category.find(params[:id])
    render json: {category: CategorySerializer.new(category)}
  end
end
