FactoryGirl.define do
  factory :dog do
    name Faker::Name.name

    factory :unnamed_dog do
      name nil
    end
  end
end
