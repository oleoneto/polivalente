require 'rails_helper'

module Polivalente
  RSpec.describe Comment, type: :model do
    describe "validations" do
      let(:user) { create(:user) }
      let(:commentable) { create(:article, author: user) }

      it "should be valid with all required attributes" do
        instance = Comment.new(user: user, commentable: commentable, content: "New Comment")
        expect(instance).to be_valid
      end

      it "should not be valid without a user" do
        instance = Comment.new(user: nil, commentable: commentable, content: "New Comment")
        expect(instance).to_not be_valid
      end

      it "should not be valid without a commentable" do
        instance = Comment.new(user: user, commentable: nil, content: "New Comment")
        expect(instance).to_not be_valid
      end

      it "should not be valid without content" do
        instance = Comment.new(user: user, commentable: commentable, content: nil)
        expect(instance).to_not be_valid
      end
    end

    describe "associations" do
      it "should belong to a user" do
        comment = Comment.reflect_on_association(:user)
        expect(comment.macro).to eq(:belongs_to)
      end

      it "should have comments" do
        comment = Comment.reflect_on_association(:comments)
        expect(comment.macro).to eq(:has_many)
      end

      it "should have reactions" do
        comment = Comment.reflect_on_association(:reactions)
        expect(comment.macro).to eq(:has_many)
      end
    end
  end
end
