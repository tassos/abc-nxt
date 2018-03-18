class ApplicationsController < ApplicationController
  protect_from_forgery with: :exception
  before_action :set_event, :set_user, only: [:new, :create]

  def show
  end

  def new
    @questions = @event.questions.order(order: :asc)
    @application = Application.new
  end

  def edit
    @application = Application.find(params[:id])
  end

  def create
    @application = Application.create!(event_id: @event.id, user_id: @user.id)
    params[:answers].each do |key, value|
      Answer.create!(application_id: @application.id, question_id: key, content: value)
    end
    redirect_to user_path(@user)
  end

  def update
  end

  private
  def set_event
    @event = Event.find(params[:event_id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
