# Example file of Facotory from old project

# FactoryGirl.define do  factory :background do
#     image ""
#   end


#   factory :user do
#     email { Faker::Internet.email }
#     zipcode { Faker::Address.zip_code }
#     password "password"
#     trait :admin do
#       admin true
#     end
#    end

# into_words = ["Tickets available from: ", "Through the weekend of: ", "Plates still available for: "]

#   factory :event do
#     title { Faker::App.name }
#     date_range { into_words.sample + Faker::Date.forward(180).to_s}
#     expiration_date { "2016-11-17" }
#     description { Faker::Lorem.paragraph }
#     summary { Faker::Lorem.sentence(4) }
#   end

#   factory :address do
#     street_address { Faker::Address.street_address }
#     apartment_number { Faker::Address.secondary_address }
#     city 'San Francisco'
#     state 'CA'
#     zipcode { Faker::Address.zip_code }
#     driving_instructions { Faker::Lorem.paragraph }
#   end

#   photo_array = [
#     "test_image_1.jpg",
#     "test_image_2.jpg",
#     "test_image_3.jpg",
#     "test_image_4.jpg",
#     "test_image_5.jpg",
#     "test_image_6.jpg"
#   ]

#   factory :photo do
#     random_image = photo_array.sample
#     image { File.new("./app/assets/images/#{random_image}") }
#     event
#   end

#   factory :event_type do
#     date { rand(1).year.from_now }
#     cart_description { "March 15th, Dinner @ 7pm" }
#     price { 100 }
#     name { "Dinner" }
#     num_of_tickets { 20 }
#     tickets_sold { 10 }
#     event_start { "18:00:00" }
#   end

#   factory :ticket do
#     event_id { 1 }
#     user_id { 1 }
#   end

#   factory :sold_ticket do
#     event_id { 1 }
#     user_id { 1 }
#     event_type_id { 1 }
#   end

#   factory :blog do
#     title { Faker::Lorem.sentence }
#     body { Faker::Lorem.paragraph }
#    end
# end
