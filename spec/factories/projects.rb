FactoryGirl.define do
  factory :project do
    sequence(:title) { |n| "Project"}
    sequence(:description) { |n| "Super ql text"}
  end
end