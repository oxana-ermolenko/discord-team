class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def show
    
  end

  def create
    @category = Category.new(category_params)
    @category.user = current_user
    if @category.save
      flash[:notice] = "You have successfully create a category"
      redirect_to @category    
    else
      render 'new'
    end
  end

  def edit
    
  end

  def update
    if @category.update(category_params)
      flash[:notice] ="You have seccessfully updated your category"
      redirect_to @category
    else
      render 'edit'
    end
  end

  def destroy
    @category.destroy
    
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end

  def set_category
    @category = Category.find(params[:id])
  end
  
end