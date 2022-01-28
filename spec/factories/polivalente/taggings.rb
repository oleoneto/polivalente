FactoryBot.define do
  factory :tagging, class: "Polivalente::Tagging" do
    tag       { nil }
    taggabble { nil }
  end
end
