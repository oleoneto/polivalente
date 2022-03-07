module Polivalente
  class ArchivesController < ApplicationController
    before_action :set_archive, only: [:show]

    def index
      @archives = Archive.latest
    end

    def show
    end

    private

    def set_archive
      @archive = Archive.find(params[:id])
    end
  end
end
