# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :manhattanjs_event do
    name "manhattanjs-#1"
    event_date Time.now + 2.days

    factory :past_manhattanjs_event do
       event_date Time.now - 2.months
    end
  end
end
