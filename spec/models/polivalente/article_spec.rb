require 'rails_helper'

module Polivalente
  RSpec.describe Article, type: :model do
    describe "validations" do
      let(:user) { create(:user) }

      it "should be valid with all required attributes" do
        instance = Article.new(author: user, title: "A new article", content: "New Article Content", status: :unlisted, language: "en")
        expect(instance).to be_valid
      end

      it "should not be valid without an author" do
        instance = Article.new(author: nil, title: "A new article", content: "New Article Content", status: :unlisted, language: "en")
        expect(instance).to_not be_valid
      end

      it "should not be valid without a title" do
        instance = Article.new(author: user, title: nil, content: "New Article Content", status: :unlisted, language: "en")
        expect(instance).to_not be_valid
      end

      it "should not be valid without a long enough title" do
        instance = Article.new(author: user, title: "?", content: "New Article Content", status: :unlisted, language: "en")
        expect(instance).to_not be_valid
      end

      it "should not be valid without content" do
        instance = Article.new(author: user, title: "A new article", content: nil, status: :unlisted, language: "en")
        expect(instance).to_not be_valid
      end

      it "should not be valid without a status" do
        instance = Article.new(author: user, title: "A new article", content: "New Article Content", status: nil, language: "en")
        expect(instance).to_not be_valid
      end

      it "should not be valid without a valid status" do
        expect {
          Article.new(author: user, title: "A new article", content: "New Article Content", status: :status, language: "en")
        }.to raise_error(ArgumentError)
      end

      it "should not be valid without a language" do
        instance = Article.new(author: user, title: "A new article", content: "New Article Content", status: :unlisted, language: nil)
        expect(instance).to_not be_valid
      end

      it "should not be valid without a valid language" do
        expect {
          Article.new(author: user, title: "A new article", content: "New Article Content", status: :unlisted, language: "cloudish")
        }.to raise_error(ArgumentError)
      end
    end

    describe "associations" do
      it "should belong to a user" do
        article = Article.reflect_on_association(:author)
        expect(article.macro).to eq(:belongs_to)
      end

      it "should have comments" do
        article = Article.reflect_on_association(:comments)
        expect(article.macro).to eq(:has_many)
      end
  
      it "should have reactions" do
        article = Article.reflect_on_association(:reactions)
        expect(article.macro).to eq(:has_many)
      end
  
      it "should have tags" do
        article = Article.reflect_on_association(:tags)
        expect(article.macro).to eq(:has_many)
      end

      it "should have taggings" do
        article = Article.reflect_on_association(:taggings)
        expect(article.macro).to eq(:has_many)
      end  
    end
  end
end
