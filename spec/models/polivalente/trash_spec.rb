require 'rails_helper'

ActiveJob::Base.queue_adapter = :test

module Polivalente
  RSpec.describe Trash, type: :model do  
    describe "validations" do
      let(:user) { create(:user) }
      let(:trashable) { create(:tag) }

      it "should be valid with a user and trashable object" do
        instance = Trash.new(user: user, trashable: trashable)
        expect(instance).to be_valid
      end

      it "should not be valid without a user" do
        instance = Trash.new(user: nil, trashable: trashable)
        expect(instance).to_not be_valid
      end

      it "should not be valid without a trashable object" do
        instance = Trash.new(user: user, trashable: nil)
        expect(instance).to_not be_valid
      end
    end

    describe "associations" do 
      it "should belong to a user" do
        instance = Trash.reflect_on_association(:user)
        expect(instance.macro).to eq(:belongs_to)
      end
  
      it "should belong to a trashable" do
        instance = Trash.reflect_on_association(:trashable)
        expect(instance.macro).to eq(:belongs_to)
      end
    end

    context "after creation" do
      let(:user) { create(:user) }
      let(:trashable) { create(:tag) }

      it "should call schedule trash deletion job" do
        subject = Trash.create(user: user, trashable: trashable)
        expect(CleanTrashJob).to have_been_enqueued.once
      end
    end

    context "when called" do
      it "should respond to :clean!" do
        expect(Trash.respond_to?(:clean!)).to eq(true)
      end
  
      it "should respond to :clean_stale!" do
        expect(Trash.respond_to?(:clean_stale!)).to eq(true)
      end
  
      # TODO: Test response to private method
      # it "should respond to :schedule_deletion" do
      #   expect(Trash.method_defined?(:schedule_deletion)).to eq(true)
      #   expect(Trash.new.respond_to?(:schedule_deletion)).to eq(true)
      # end
    end
  end
end
