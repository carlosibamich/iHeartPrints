FactoryBot.define do
  sequence (:email) { |n| "another_user#{n}@email.com" }
  sequence (:password) { |n| "username#{n}" }

  factory :user do
    email
    password
    first_name { "Generic" }
    last_name { "Name" }
    admin { false }

    factory :admin do
      first_name { "Admin" }
      last_name { "User" }
      admin { true }
    end
  end
end
