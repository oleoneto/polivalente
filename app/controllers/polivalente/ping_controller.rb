module Polivalente
  class PingController < ApplicationController
    def index
      render json: { status: 'OK' }, status: :ok
    end
  end
end
