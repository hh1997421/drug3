FactoryBot.define do
  factory :user do
    nickname {"yamada"}
    email {"abab@gmail.com"}
    password = Faker::Internet.password(min_length: 6)
    password {password}
    password_confirmation {password}
  end
end