module Polivalente
  class PingController < ActionController::Base
    def index
      render json: { status: 'OK' }, status: :ok
    end
  end
end
