class UsersController < ApplicationController
  protect_from_forgery with: :exception
  before_action :set_user, only: [:show, :edit, :update]

  def show
    @applications = @user.applications
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

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :lbg, :diet, :year_started, :year_ended)
  end
end
