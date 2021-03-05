class Api::V1::CategoriesController < ApplicationController

  def index
    categories = Category.all
    render json: {category: CategorySerializer.new(categories)}
  end
end
