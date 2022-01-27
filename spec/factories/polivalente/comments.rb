FactoryBot.define do
  factory :comment, class: "Polivalente::Comment" do
    user        { nil }
    commentable { nil }
    content     { "New comment" }
  end
end
