FactoryBot.define do
  factory :article do
    user_id { 1 }
    content { 'Awesome article!' }
  end

  trait :author do
    user_id { 1 }
  end

  trait :invalid_article do
    content { '' }
  end
end
