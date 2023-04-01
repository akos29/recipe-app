require 'rails_helper'
RSpec.describe InventoryFood, type: :model do
  describe 'validations' do
    it 'requires quantity to be greater than 0' do
      inventory_food = InventoryFood.new(quantity: 0)
      expect(inventory_food).not_to be_valid
      expect(inventory_food.errors[:quantity]).to include('must be greater than 0')
    end
  end
  describe 'associations' do
    it 'belongs to a food' do
      expect(InventoryFood.reflect_on_association(:food).macro).to eq(:belongs_to)
    end
    it 'belongs to an inventory' do
      expect(InventoryFood.reflect_on_association(:inventory).macro).to eq(:belongs_to)
    end
  end
end
