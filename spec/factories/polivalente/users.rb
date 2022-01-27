FactoryBot.define do
  factory :user, class: "Polivalente::User" do
    first_name   { "Oliver" }
    last_name    { "Doe" }
    email        { "oliver@example.com" }
    password     { "un-safe-password" }
    confirmed_at { Time.now }
  end
end
