FactoryBot.define do
  factory :user, class: 'User', aliases: %i[author] do
    name { 'Test User' }
    username { 'testuser' }
    password { 'qwerty' }
  end

  trait :invalid_user do
    id { nil }
    name { 'Inv' }
    username { 'a' }
    password { 'qwe' }
  end
end
