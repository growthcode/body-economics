class Food < ActiveRecord::Base
  has_many :servings
  has_many :meals, through: :servings
  has_many :tags, dependent: :destroy
  belongs_to :user
  validates :user_id, presence: true
end
