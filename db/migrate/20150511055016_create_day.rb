class CreateDay < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.integer :score, null: false, default: 0
      t.string :exercise
      t.integer :weight
      t.date :the_date
      t.text :note

      t.belongs_to :user
      t.timestamps
    end
  end
end
