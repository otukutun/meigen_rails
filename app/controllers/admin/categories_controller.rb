class Admin::CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    science = Category.create!(category_params)
  end

  def show
  end

  def index
  end

  def destroy
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
