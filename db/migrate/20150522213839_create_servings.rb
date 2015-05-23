class CreateServings < ActiveRecord::Migration
  def change
    create_table :servings do |t|
      t.integer :kcal_of_food
      t.integer :serv_num

      t.belongs_to :meal
      t.belongs_to :food
      t.timestamps
    end
  end
end
