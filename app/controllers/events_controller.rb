class EventsController < ApplicationController
  before_action :get_event, only: %i[show edit update destroy]

  def index
    @events = Event.page(params[:page]).per(5)
  end

  def new
    @event = Event.new
    @title = "搞甚麼軌"
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to action: :index
    else
      render action: :new
    end
  end

  def show
    @title = "show"
  end

  def edit; end

  def update
    @event.update(event_params)
    flash[:notice] = "success on update"

    redirect_to action: :show, id: @event.id
  end

  def destroy
    @event.destroy
    flash[:notice] = "success on destroy"

    redirect_to action: :index
  end

  private

  def event_params
    params.require(:event).permit(:name, :description)
  end

  def get_event
    @event = Event.find(params[:id])
  end
end
