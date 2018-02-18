class UsersController < ApplicationController
  protect_from_forgery with: :exception
  before_action :set_application, only: :show

  def show
  end

  def new
    @user = User.new
  end

  def create
    redirect_to root_path
  end

  private
  def set_application
    @user = User.find(params[:id])
  end
end
