FactoryBot.define do
  factory :follow, class: "Polivalente::Follow" do
    follower { nil }
    followee { nil }
  end
end
