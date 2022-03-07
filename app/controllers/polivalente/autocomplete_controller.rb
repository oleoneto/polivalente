module Polivalente
  class AutocompleteController < ApplicationController
    before_action :force_json

    def tags
      @tags = Tag.all.latest
      render "polivalente/autocomplete/tags"
    end

    def users
      user_class = Polivalente.config.user_class.constantize
      @users = user_class.all.latest
      render "polivalente/autocomplete/users"
    end

    protected

    def force_json
      request.format = :json
    end
  end
end
