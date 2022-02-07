module Polivalente
  class ApplicationController < ActionController::Base
    before_action do
      ActiveStorage::Current.url_options = { host: "localhost:3000" }
    end
  end
end
