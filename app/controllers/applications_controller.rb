class ApplicationsController < ApplicationController
  protect_from_forgery with: :exception
  before_action :set_application

  def show
  end

  def new
  end

  def create
  end

  private
  def set_application
    @application = Application.find(params[:id])
  end
end
