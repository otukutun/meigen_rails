# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :poem do
    sequence(:text) { |i| "test#{i}"}
    sequence(:author) { |i| "test#{i}"}
  end
end
