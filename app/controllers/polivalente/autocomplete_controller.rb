module Polivalente
  class AutocompleteController < ApplicationController
    before_action :force_json

    def tags
      @tags = Tag.all.latest
      render json: @tags, status: 200
    end

    def users
      @users = User.all.latest
      render json: @users, status: 200
    end

    protected

    def force_json
      request.format = :json
    end
  end
end
