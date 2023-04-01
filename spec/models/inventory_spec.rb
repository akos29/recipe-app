require 'rails_helper'
RSpec.describe Inventory, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(3).is_at_most(100) }
  end
  describe 'associations' do
    it { should belong_to(:user).with_foreign_key('user_id') }
    it { should have_many(:inventory_foods).with_foreign_key('inventory_id').dependent(:destroy) }
    it { should have_many(:foods).through(:inventory_foods).dependent(:destroy) }
  end
end
