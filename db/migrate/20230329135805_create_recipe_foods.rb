class CreateRecipeFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_foods do |t|
      t.references :recipe, null: false, foreign_key: { to_table: :recipes }
      t.references :food, null: false, foreign_key: { to_table: :foods }
      t.integer :quantity
      t.timestamps
    end
  end
end
