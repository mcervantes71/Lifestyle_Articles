FactoryBot.define do
  factory :user, class: 'User', aliases: %i[author commenter] do
    id { 1 }
    name { 'test User' }
    username { 'testuser' }
    password { 'qwerty' }
  end

  factory :friend, class: 'User' do
    id { 2 }
    name { 'tester testuser' }
    username { 'terster' }
    password { 'password' }
  end

  trait :invalid_user do
    id { nil }
    name { 'Inv' }
    username { 'a' }
    password { 'qwe' }
  end
end
