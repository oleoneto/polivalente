FactoryBot.define do
  factory :reaction, class: "Polivalente::Reaction" do
    user      { nil }
    kind      { "like" }
    reactable { nil }
  end
end
