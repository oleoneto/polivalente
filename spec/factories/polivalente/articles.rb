FactoryBot.define do
  factory :article, class: "Polivalente::Article" do
    author   { nil }
    title    { "A new article" }
    content  { "New article" }
    status   { "unlisted" }
    language { "en" }
  end
end
