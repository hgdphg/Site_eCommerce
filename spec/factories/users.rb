FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
	age { Faker::Number.between(1,100)}
	address { Faker::Address.street_address }
	avatar_image "default.png"
	email {Faker::Internet.email}
	password {Faker::Internet.password}
  end

end
