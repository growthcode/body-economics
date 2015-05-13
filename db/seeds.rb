# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

@user = User.new(:email => 'asdf@asdf.com', :password => 'asdfasdf', :password_confirmation => 'asdfasdf')
@user.save

counter_28 = 28
weight = 200
score_array = [1,1,1,1,0,-1,-1,1,1,1,1,0,1,-2]
exercise_array = ["cardio", "weight training"]
points_array = [0]

28.times do
  exer_today = exercise_array.sample
  points_today = score_array.sample
  points_array << points_today
  pts_to_date = points_array.inject(:+)
  if points_today == 0 || points_today == -2
    exer_today = "none"
  end
  day = Day.new(score: points_today, exercise: exer_today, weight: weight - (pts_to_date/2), the_date: Date.today - counter_28, note: "I did #{exer_today} and got a #{points_today} point for the day.", user_id: @user.id)
  day.save
  puts counter_28 -= 1
end

