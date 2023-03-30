class RecipeFoodsController < ApplicationController
  def new; end

  def create; end

  def destroy
    recipe_food = RecipeFood.find(params[:id])
    recipe_food.destroy
    redirect_to user_recipe_path(current_user, recipe_food.recipe)
  end
end
