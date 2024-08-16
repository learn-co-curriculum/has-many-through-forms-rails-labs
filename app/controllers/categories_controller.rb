class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
  end

  def new
    category = Category.find_or_create_by
  end
end
