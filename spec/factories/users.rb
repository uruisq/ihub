FactoryBot.define do
  factory :test01, class: User  do
    id { "1" }
    name { "user01" }
    email { "test01@test.com" }
    password { "555555" }
    password_confirmation { "555555" }
  end
  factory :test02, class: User  do
    id { "2" }
    name { "user02" }
    email { "test02@test.com" }
    password { "555555" }
    password_confirmation { "555555" }
  end
  factory :test03, class: User  do
    id { "3" }
    name { "user03" }
    email { "test03@test.com" }
    password { "111111" }
    password_confirmation { "111111" }
    admin { true }
  end
end
