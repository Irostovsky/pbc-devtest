FactoryGirl.define do
  factory :panel_provider do
    sequence(:code) { |n| "provider_#{n}" }
  end
end
