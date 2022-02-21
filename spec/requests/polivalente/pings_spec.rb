require 'rails_helper'

module Polivalente
  RSpec.describe "Pings", type: :request do
    before(:example) { get ping_index_url }  # FIXME: get ping_index
  
    describe "GET /ping" do
      it "returns a status of 200" do
        expect(response).to have_http_status(200)
      end
  
      it "display OK status" do
        expect(JSON.parse(response.body)["status"]).to eq("OK")
      end
    end
  end
end
