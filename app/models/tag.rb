class Tag < ActiveRecord::Base
  belongs_to :food
  validates :word, presence: true
  validates :food_id, presences: true
end
