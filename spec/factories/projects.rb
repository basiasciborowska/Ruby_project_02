FactoryGirl.define do
  factory :project do
    sequence(:title) { |n| "Article no.#{n}"}
    sequence(:description) { |n| "Super ql text #{n}"}
  end
end