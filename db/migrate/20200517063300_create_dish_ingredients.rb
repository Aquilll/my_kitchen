class CreateDishIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :dish_ingredients do |t|
      t.belongs_to :dish
      t.integer :ingredient, array: true, default: []
      t.timestamps
    end
  end
end
