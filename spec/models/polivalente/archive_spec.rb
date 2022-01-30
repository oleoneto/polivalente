require 'rails_helper'

module Polivalente
  RSpec.describe Archive, type: :model do
    describe "validations" do
      let(:user) { create(:user) }
      let(:archivable) { create(:tag) }

      it "should be valid with a user and archivable object" do
        instance = Archive.new(user: user, archivable: archivable)
        expect(instance).to be_valid
      end

      it "should not be valid without a user" do
        instance = Archive.new(user: nil, archivable: archivable)
        expect(instance).to_not be_valid
      end

      it "should not be valid without an archivable object" do
        instance = Archive.new(user: user, archivable: nil)
        expect(instance).to_not be_valid
      end
    end

    describe "associations" do 
      it "should belong to a user" do
        instance = Archive.reflect_on_association(:user)
        expect(instance.macro).to eq(:belongs_to)
      end
  
      it "should belong to an archivale" do
        instance = Archive.reflect_on_association(:archivable)
        expect(instance.macro).to eq(:belongs_to)
      end
    end

    context "after deletion" do
      let(:user) { create(:user) }
      let(:archivable) { create(:tag) }

      it "should delete parent achivable object" do
        subject = Archive.create(user: user, archivable: archivable)
        expect { subject.destroy }.to change { Tag.count }.by(-1)
        expect { subject.reload }.to raise_error(ActiveRecord::RecordNotFound)
        expect { archivable.reload }.to raise_error(ActiveRecord::RecordNotFound)
      end
    end
  end
end
