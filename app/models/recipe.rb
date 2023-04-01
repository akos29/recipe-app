class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  has_many :foods, through: :recipe_foods
  validates :name, presence: true
  validates :description, presence: true
  validates :preparation_time, presence: true
  validates :cooking_time, presence: true

  after_save :total

  def total_food_items
    recipe_foods.count
  end

  def total_price
    result = 0
    recipe_foods.each do |recipe_food|
      result += recipe_food.food.price * recipe_food.quantity
    end

    result
  end

  def total; end
end
