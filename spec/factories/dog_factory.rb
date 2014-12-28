FactoryGirl.define do
  factory :dog do
    name Faker::Name.name
    image 'default_profile.jpg'

    factory :unnamed_dog do
      name nil
    end
  end
end
