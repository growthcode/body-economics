FactoryGirl.define do


  factory :user do
    email { Faker::Internet.email }
    password { "asdfasdf"}
    password_confirmation { "asdfasdf"}
    weight { 200 }
    goal_weight { 180 }
    max_calories { 1600 }
    goal_weekly_score { 2 }
    sex { "male" }
  end


  score_array = [1,1,1,1,0,-1,-1,1,1,1,1,0,1,-2]
  exercise_array = ["cardio", "weight training"]

  factory :day do
    points_today = score_array.sample
    exer_today = exercise_array.sample
    score { score_array.sample }
    exercise { exercise_array.sample }
    the_date { Date.today }
    note { "I did #{exer_today} and got a #{points_today} point for the day." }
    user_id { 1 }
  end

  factory :meal do
    kcal_meal { 1550 }
    hunger_lvl { 5 }
    day_id { Day.last.id}
  end

  factory :serving do
    kcal_of_food { 280 }
    serv_num { 2 }
    meal_id { Meal.last.id }
    food_id { Food.first.id }
  end

  factory :food do
    kind { "Chicken Breast" }
    kcal_per { 140 }
    serving_size { "4 oz" }
    user_id { User.first.id }
  end

  factory :tag do
    word { "junk" }
    food_id { Food.first.id }
  end
end
