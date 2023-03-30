class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show; end

  def new; end

  def create; end

  def destroy
    @recipe = Recipe.find(params[:id])
    if @recipe.destroy
      flash[:success] = 'Post deleted successfully'
      redirect_to root_path
    else
      flash.now[:error] = 'Error: Post could not be deleted'
    end
  end
end
