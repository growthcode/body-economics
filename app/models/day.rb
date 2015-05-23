class Day < ActiveRecord::Base
  belongs_to :user
  has_many :meals, dependent: :destroy
  validates :user_id, presence: true
  validates :the_date, uniqueness: true
end
