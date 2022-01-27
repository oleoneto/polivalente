require 'rails_helper'

module Polivalente
  RSpec.describe Reaction, type: :model do
    describe "validations" do
      let(:user) { create(:user) }
      let(:reactable) { create(:article, author: user) }

      it "should be valid with reactor, kind, and reactable object" do
        instance = Reaction.new(user: user, kind: :like, reactable: reactable)
        expect(instance).to be_valid
      end

      it "should be valid with reactor, kind, data, and reactable object" do
        instance = Reaction.new(user: user, kind: :emoji, data: "{content: 😂}", reactable: reactable)
        expect(instance).to be_valid
      end

      it "should not be valid without a reactor" do
        instance = Reaction.new(user: nil, kind: :like, reactable: reactable)
        expect(instance).to_not be_valid
      end
      
      it "should not be valid without a reactable object" do
        instance = Reaction.new(user: user, kind: :like, reactable: nil)
        expect(instance).to_not be_valid
      end

      it "should not be valid without a valid reaction kind" do
        instance = Reaction.new(user: user, kind: nil, reactable: reactable)
        expect(instance).to_not be_valid
      end

      it "should require valid reaction kind" do
        expect{
          Reaction.new(user: user, kind: :unknown, reactable: reactable)
        }.to raise_error(ArgumentError)
      end

      it "should require data for emoji reaction" do
        instance = Reaction.new(user: user, kind: :emoji, data: nil, reactable: reactable)
        expect(instance).to_not be_valid
      end
    end

    describe "associations" do
      it "should belong to reactor" do
        instance = Reaction.reflect_on_association(:user)
        expect(instance.macro).to eq(:belongs_to)
      end

      it "should belong to reactable" do
        instance = Reaction.reflect_on_association(:reactable)
        expect(instance.macro).to eq(:belongs_to)
      end
    end
  end
end
