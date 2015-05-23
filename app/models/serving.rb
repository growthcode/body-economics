class Serving < ActiveRecord::Base
  belongs_to :meal
  belongs_to :food
  validates :meal_id, presences: true
  validates :food_id, presences: true
end
