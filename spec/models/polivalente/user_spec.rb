require 'rails_helper'

module Polivalente
  RSpec.describe User, type: :model do
    describe "validations" do
      it "should be valid with a :first_name, :last_name, :email, and :password" do
        instance = User.new(first_name: 'Oliver', last_name: 'Doe', email: 'oliver@example.com', password: 'un-safe-password')
        expect(instance).to be_valid
      end

      it "should not be valid without a :first_name" do
        instance = User.new(first_name: nil, last_name: 'Doe', email: 'oliver@example.com', password: 'unsafe-password')
        expect(instance).to_not be_valid
      end

      it "should not be valid without a :last_name" do
        instance = User.new(first_name: 'Oliver', last_name: nil, email: 'oliver@example.com', password: 'unsafe-password')
        expect(instance).to_not be_valid
      end

      it "should not be valid without an :email" do
        instance = User.new(first_name: 'Oliver', last_name: 'Doe', email: nil, password: 'unsafe-password')
        expect(instance).to_not be_valid
      end

      it "should not be valid without a valid :email" do
        instance = User.new(first_name: 'Oliver', last_name: 'Doe', email: '@NO.EMAIL.COM', password: 'unsafe-password')
        expect(instance).to_not be_valid
      end

      it "should not be valid without a :password" do
        instance = User.new(first_name: 'Oliver', last_name: 'Doe', email: 'oliver@example.com', password: nil)
        expect(instance).to_not be_valid
      end

      it "should not be valid without a minimum length :password" do
        instance = User.new(first_name: 'Oliver', last_name: 'Doe', email: 'oliver@example.com', password: 'passwor')
        puts instance.errors.count
        expect(instance).to_not be_valid
      end
    end

    describe "methods" do
      it "should respond to :name" do
        expect(User.method_defined?(:name)).to eq(true)
        expect(User.new.respond_to?(:name)).to eq(true)
      end

      it "should respond to :photo" do
        expect(User.method_defined?(:photo)).to eq(true)
        expect(User.new.respond_to?(:photo)).to eq(true)
      end
    end
  end
end
