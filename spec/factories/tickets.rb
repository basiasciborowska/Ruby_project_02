FactoryGirl.define do
  factory :ticket do
    sequence(:title) { |n| "Ticket"}
    sequence(:description) { |n| "Some ql words"}
    sequence(:priority) { |n| "priority"}
    sequence(:difficulty) { |n| "difficulty"}
    sequence(:status) { |n| "status"}
  end
end