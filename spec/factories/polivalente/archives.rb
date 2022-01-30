FactoryBot.define do
  factory :archive, class: "Polivalente::Archive" do
    user       { nil }
    archivable { nil }
  end
end
