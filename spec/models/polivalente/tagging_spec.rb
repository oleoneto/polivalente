require 'rails_helper'

module Polivalente
  RSpec.describe Tagging, type: :model do
    describe "validations" do
      let(:tag) { create(:tag) }
      let(:user) { create(:user) }
      let(:taggable) { create(:article, author: user) }

      it "should be valid with a tag and taggable object" do
        instance = Tagging.new(tag: tag, taggable: taggable)
        expect(instance).to be_valid
      end
      
      it "should not be valid without a tag" do
        instance = Tagging.new(tag: nil, taggable: taggable)
        expect(instance).to_not be_valid
      end

      it "should not be valid without a taggable object" do
        instance = Tagging.new(tag: tag, taggable: nil)
        expect(instance).to_not be_valid
      end
    end

    describe "associations" do
      it "should belong to a tag" do
        instance = Tagging.reflect_on_association(:tag)
        expect(instance.macro).to eq(:belongs_to)
      end

      it "should belong to a taggable" do
        instance = Tagging.reflect_on_association(:taggable)
        expect(instance.macro).to eq(:belongs_to)
      end
    end
  end
end
