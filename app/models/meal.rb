class Meal < ActiveRecord::Base
  belongs_to :day
  has_many :servings, dependent: :destroy
  has_many :foods, through: :servings
  validates :mealtime, uniqueness: true
  validates :day_id, presence: true
end
