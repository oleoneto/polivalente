require 'rails_helper'

module Polivalente
  RSpec.describe Follow, type: :model do
    describe "validations" do
      let(:user1) { create(:user, email: "user1@example.com", first_name: "John") }
      let(:user2) { create(:user, email: "user2@example.com", first_name: "Jane") }

      it "should be valid with two distinct users paired" do
        instance = Follow.new(follower: user1, followee: user2)
        expect(instance).to be_valid
      end

      it "should not be valid without both follower and followee" do
        instance = Follow.new(follower: nil, followee: nil)
        expect(instance).to_not be_valid
      end

      it "should not be valid without a follower" do
        instance = Follow.new(follower: nil, followee: user2)
        expect(instance).to_not be_valid
      end

      it "should not be valid without a followee" do
        instance = Follow.new(follower: user1, followee: nil)
        expect(instance).to_not be_valid
      end

      it "should not be valid if follower and followee are the same user" do
        instance = Follow.new(follower: user1, followee: user1)
        expect(instance).to_not be_valid
      end
    end

    describe "associations" do
      it "should belong to a follower (user)" do
        relation = Follow.reflect_on_association(:follower)
        expect(relation.macro).to eq(:belongs_to)
      end

      it "should belong to a followee (user)" do
        relation = Follow.reflect_on_association(:followee)
        expect(relation.macro).to eq(:belongs_to)
      end
    end

    describe "methods" do
      let(:user1) { create(:user, email: "user1@example.com", first_name: "John") }
      let(:user2) { create(:user, email: "user2@example.com", first_name: "Jane") }
      let(:instance) { create(:follow, follower: user1, followee: user2) }

      it "should respond to :follower_name" do
        expect(Follow.method_defined?(:follower_name)).to eq(true)
        expect(Follow.new.respond_to?(:follower_name)).to eq(true)

        expect(instance.follower_name).to eq(user1.name)
      end

      it "should respond to :followee_name" do
        expect(Follow.method_defined?(:followee_name)).to eq(true)
        expect(Follow.new.respond_to?(:followee_name)).to eq(true)

        expect(instance.followee_name).to eq(user2.name)
      end
    end
  end
end
