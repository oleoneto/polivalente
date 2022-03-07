json.extract! user, :name
json.sgid user.attachable_sgid
json.content render(partial: "polivalente/users/user", locals: { user: user }, formats: [:html])
json.url user_url(user)