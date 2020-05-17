class CreateDishTimings < ActiveRecord::Migration[6.0]
  def change
    create_table :dish_timings do |t|
      t.belongs_to :dish
      t.belongs_to :timing
      t.timestamps
    end
  end
end
