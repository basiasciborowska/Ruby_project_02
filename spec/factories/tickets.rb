FactoryGirl.define do
  factory :ticket do
    sequence(:title) { |n| "Ticket no.#{n}"}
    sequence(:description) { |n| "Some ql words #{n}"}
    sequence(:priority) { |n| "priority no.#{n}"}
    sequence(:difficulty) { |n| "difficulty at level #{n}"}
    sequence(:status) { |n| "status: #{n}"}
  end
end