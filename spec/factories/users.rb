# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "Sam Carlsruh"
    email "samcarlsruh@gmail.com"
    password_digest "foobar"
    remember_token "foobar"
    admin false
  end
end
