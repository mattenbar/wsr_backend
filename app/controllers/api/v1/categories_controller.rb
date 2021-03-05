class Api::V1::CategoriesController < ApplicationController

  def index
    categories = Category.all
    render json: {category: CategorySerializer.new(categories)}
  end

  def show
    category = Category.find(params[:id])
    render json: {category: CategorySerializer.new(category)}
  end
end
