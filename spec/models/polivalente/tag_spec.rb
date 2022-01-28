require 'rails_helper'

module Polivalente
  RSpec.describe Tag, type: :model do
    describe "validations" do
      it "should be valid with a name" do
        instance = Tag.new(name: "social")
        expect(instance).to be_valid
      end

      it "should be valid with a name" do
        instance = Tag.new(name: "no")
        expect(instance).to be_valid
      end

      it "should be valid with a name" do
        instance = Tag.new(name: "yes")
        expect(instance).to be_valid
      end

      it "should not be valid without a name" do
        instance = Tag.new
        expect(instance).to_not be_valid
      end

      it "should not be valid without a long enough name" do
        instance = Tag.new(name: "a")
        expect(instance).to_not be_valid
      end
    end

    describe "name sanitization" do
      it "should sanitize the tag name" do
        instance = Tag.create(name: "#yes")
        expect(instance.name).to eq("yes")
      end

      it "should sanitize the tag name" do
        instance = Tag.create(name: "@#yes")
        expect(instance.name).to eq("yes")
      end

      it "should sanitize the tag name" do
        instance = Tag.create(name: "yes!()-_+&@#~=/\\.,:;")
        expect(instance.name).to eq("yes")
      end

      it "should sanitize the tag name" do
        instance = Tag.create(name: "!()-_+&@#yes~=/\\.,:;")
        expect(instance.name).to eq("yes")
      end

      it "should sanitize the tag name" do
        instance = Tag.create(name: "old-news")
        expect(instance.name).to eq("old-news")
      end

      it "should sanitize the tag name" do
        instance = Tag.create(name: "old-")
        expect(instance.name).to eq("old")
      end

      it "should sanitize the tag name" do
        instance = Tag.create(name: "-news")
        expect(instance.name).to eq("news")
      end
    end

    describe "associations" do
      it "should have taggings" do
        instance = Tag.reflect_on_association(:taggings)
        expect(instance.macro).to eq(:has_many)
      end
    end
  end
end
