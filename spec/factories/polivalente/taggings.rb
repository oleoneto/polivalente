FactoryBot.define do
  factory :tagging, class: "Polivalente::Tagging" do
    tag       { nil }
    taggable  { nil }
  end
end
