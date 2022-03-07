module Polivalente
  class TrashesController < ApplicationController
    before_action :set_trash, only: [:show]

    def index
      @trash = Trash.latest
    end

    def show
    end

    private

    def set_trash
      @trash = Trash.find(params[:id])
    end
  end
end
