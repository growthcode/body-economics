class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :kind
      t.integer :kcal_per
      t.string :serving_size
      t.integer :meals_ate, null: false, default: 0
      t.integer :servings_ate, null: false, default: 0
      t.boolean :quickadd, null: false, default: false
      t.boolean :favorite, null: false, default: false
      t.boolean :hidden, null: false, default: false

      t.belongs_to :user
      t.timestamps
    end
  end
end
