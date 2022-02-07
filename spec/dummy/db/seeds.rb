require 'faker'


def create_user(password: nil, is_admin: false)
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name

  Polivalente::User.create(
      :first_name => first_name,
      :last_name => last_name,
      :email => Faker::Internet.free_email(name: last_name),
      :password => password || Faker::Internet.password,
      :confirmed_at => Time.now,
      :is_admin => is_admin
  )
end



# Predictable users
Polivalente::User.destroy_all

user = create_user(password: "unsafe-password", is_admin: true)
user.photo.attach(io: File.open("app/assets/images/polivalente/user-sample.jpg"), filename: "user1.jpg", content_type: "image/jpeg")

create_user(password: "notsafeforprod", is_admin: true)


# Random users...
1.upto(15) do; create_user; end


# Tags
Polivalente::Tag.destroy_all

Polivalente::Tag.create(name: "Jobs")
Polivalente::Tag.create(name: "Networking")
Polivalente::Tag.create(name: "Social")

# Comments
Polivalente::Comment.destroy_all

Polivalente::Comment.create(user: user, commentable: Polivalente::Tag.first, content: "LinkedIn, anyone?")
Polivalente::Comment.create(user: user, commentable: Polivalente::Tag.second, content: "Any good advice about how to network effectively?")
Polivalente::Comment.create(user: user, commentable: Polivalente::Tag.third, content: "The new normal")


# Reactions

Polivalente::Reaction.destroy_all

Polivalente::Reaction.create(user: user, kind: "bookmark", reactable: Polivalente::Comment.first)
Polivalente::Reaction.create(user: user, kind: "like", reactable: Polivalente::Comment.first)
Polivalente::Reaction.create(user: user, kind: "like", reactable: Polivalente::Comment.second)
Polivalente::Reaction.create(user: user, kind: "like", reactable: Polivalente::Comment.third)