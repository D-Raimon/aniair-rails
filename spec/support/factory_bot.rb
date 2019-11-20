require 'factory_bot'

FactoryBot.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password { 'password' }
    password_confirmation { 'password' }
  end

  factory :show do
    title { "Boku No Hero Academia" }
    description { "4th Season of Boku No Hero Academia." }
    image_url { "https://cdn.myanimelist.net/images/anime/1315/102961.jpg" }
    trailer_url { "https://www.youtube.com/watch?v=pd6i3Kv2yIs" }
  end

end
