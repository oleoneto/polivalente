require 'rails_helper'

module Polivalente
  RSpec.describe "Autocompletes", type: :request do
    describe "GET /autocomplete/tag" do
      it "shows a list of tags" do
        get "/autocomplete/tags"
        expect(response).to have_http_status(200)
      end
    end

    describe "GET /autocomplete/users" do
      it "shows a list of users" do
        get "/autocomplete/users"
        expect(response).to have_http_status(200)
      end
    end
  end
end
