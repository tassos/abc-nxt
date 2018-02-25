class UsersController < ApplicationController
  protect_from_forgery with: :exception
  before_action :set_application, only: :show

  def show
  end

  def new
    @user = User.new
  end

  def create
    unless User.find_by(email: user_params[:email])
      @user = User.create(user_params)
    end

    redirect_to root_path
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email)
  end
end
