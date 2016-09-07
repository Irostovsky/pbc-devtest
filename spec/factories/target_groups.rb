FactoryGirl.define do
  factory :target_group do
    name "Target Group"
    association :panel_provider
  end
end
