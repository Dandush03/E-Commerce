FactoryBot.define do
  factory :user do
    sequence(:username) { |n| "user#{n}" }
    email { "#{username}@example.com".downcase }
    password { 'password' }
  end
end
