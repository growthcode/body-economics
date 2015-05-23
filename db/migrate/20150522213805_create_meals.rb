class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.integer :kcal_meal
      t.time :mealtime
      t.integer :hunger_lvl
      t.text :note

      t.belongs_to :day
      t.timestamps
    end
  end
end
