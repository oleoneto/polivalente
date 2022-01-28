FactoryBot.define do
  factory :trash, class: "Polivalente::Trash" do
    user      { nil }
    trashable { nil }
  end
end
