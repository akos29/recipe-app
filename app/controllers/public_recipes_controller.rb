class PublicRecipesController < ApplicationController
  def index
    @recipes = Recipe.includes(:user).includes(:foods).where(public: true).order('created_at DESC')
  end
end
