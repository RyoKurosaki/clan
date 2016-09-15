class LoginsController < ApplicationController
  before_action :authenticate_user!, :set_user, only: [:edit, :update, :gohome]

  def index
    @users = get_users
  end

  def edit
  end

  def update
    @user.beout = true
    @user.place = user_params[:place]
    @user.out_start = user_params[:out_start]
    @user.out_end = user_params[:out_end]
    @user.save
    @users = get_users
  end

  def gohome
    @user.beout = false
    @user.place = ''
    @user.out_start = ''
    @user.out_end = ''
    @user.save
    @users = get_users
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:place, :out_start, :out_end)
    end

    def get_users
      @users = User.joins(:position).preload(:position).order(:position_id)
    end
end
