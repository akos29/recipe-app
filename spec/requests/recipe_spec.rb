require 'rails_helper'

RSpec.describe 'RecipeFood', type: :request do
  include Devise::Test::IntegrationHelpers
  let(:user) { User.create(email: 'cake@mail.com', password: 'password') }
  let(:food) { user.foods.create(name: 'apple', measurement_unit: 'kg', price: 4) }
  let(:recipe) do
    user.recipes.create(name: 'Pizza', cooking_time: 1, preparation_time: 2, description: 'hgghghghghh', public: false)
  end
  describe 'GET /index' do
    before do
      sign_in user
      get user_recipes_path(user)
      get new_user_recipe_path(user)  
    end

    it 'response to html' do
      expect(response.content_type).to include 'text/html'
    end
  end
end
