class CategoriesController < ApplicationController
  def index
    @categories = Category.roots
  end

  def show
    @category = Category.find_by id: params[:id]
    @categories = @category.children
  end
end
