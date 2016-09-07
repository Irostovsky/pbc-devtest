FactoryGirl.define do
  factory :location_group do
    sequence(:name) { |n| "lg_#{n}" }
  end
end
