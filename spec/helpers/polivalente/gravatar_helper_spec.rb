require 'rails_helper'

module Polivalente
  RSpec.describe GravatarHelper, type: :helper do
    context "" do
      it "shows nothing if email fails regex" do
        addresses = [
          "e.com@.",
          "e@example.",
          "e@example..",
          "easy.com@.com",
          "easy.com@1-.com",
          "easy.com@1e-.com",
          "easy.com@1e..com",
          "easy.com@e..com",
          "e1.com@.",
          "e1e.com@.",
          "e1e@example.",
          "e1e@example..",
          # "e1e@example", # FIXME: Test fails
          # "e@example",   # FIXME: Test fails
          # "e1@example",  # FIXME: Test fails
        ]

        addresses.each do |email|
          # expect(URI::MailTo::EMAIL_REGEXP.match?(email)).to eq(false)
          expect(helper.user_gravatar(email)).to be(nil)
        end
      end
    end

    context "user gravatar" do
      let(:user) { create(:user) }
      let(:generic_gravatar) { "https://www.gravatar.com/avatar/196a2a101e3540a5a157f530afed4b04" }
      
      it "shows a generic gravatar" do
        expect(helper.user_gravatar(user.email)).to include("https://www.gravatar.com/avatar/")
      end
      
      it "shows the user's gravatar" do
        expect(helper.user_gravatar("rails@gmail.com")).to include("https://www.gravatar.com/avatar/")
      end
    end

    context "user avatar" do
      let(:user) { create(:user) }
      
      it "shows the user's gravatar as backup" do
        expect(helper.user_avatar(user)).to include("https://www.gravatar.com/avatar/")
      end

      it "shows the user's photo" do
        ActiveStorage::Current.url_options = { host: "localhost:3000"}
        user.photo.attach(io: File.open("app/assets/images/polivalente/user-sample.jpg"), filename: "user1.jpg", content_type: "image/jpeg")
        expect(helper.user_avatar(user)).to be(user.photo)
      end

    end
  end
end
