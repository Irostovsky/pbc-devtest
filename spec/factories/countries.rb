FactoryGirl.define do
  factory :country do
    sequence(:code) { |n| "country_#{n}" }
    association :panel_provider
  end
end
