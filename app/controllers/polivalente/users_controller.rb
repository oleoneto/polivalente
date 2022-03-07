module Polivalente
  class UsersController < ApplicationController
    before_action :set_user, except: [:index, :create, :new]

    def index
    end

    def show
      @recent_activities = []

      # Sudo-random list of user suggestions
      @related_users = @user_class.all
        .where(id: 10.times.map { rand(@user_class.first.id...@user_class.last.id) })
        .where.not(id: @user.id)
        .latest
        .first(4)
    end

    def edit
    end

    def update
      if @user.update(user_params)
        render :show
      else
        render :edit
      end
    end

    private

    def set_user
      @user_class = Polivalente.config.user_class.constantize
      @user = @user_class.find(params[:id])
      @page_title = @user.name
    end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :photo)
    end
  end
end
