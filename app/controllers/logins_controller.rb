class LoginsController < ApplicationController
  def index
    @users = User.all
  end

  def update
    @user = User.find(params[:id])
    @user.beout ^= true
    status = Utils::CommonUtil.check_user_status(@user.beout)
    respond_to do |format|
      @user.save
      format.html { redirect_to root_path, notice: "#{status}に切り替わりました。" }
    end
  end
end
