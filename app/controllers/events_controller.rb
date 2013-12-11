class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :verify_is_admin, only:[:create, :new, :edit, :update, :destroy]
  
  
  def index
    #@events = Event.order("starts_at ASC")
    @events = Event.where("starts_at >= '#{Time.now}'")
  end

  def show
  end

  def new
    @event = Event.new
  end

  def edit
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to @event, notice: 'Event was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @event.update(event_params)
      redirect_to @event, notice: 'Event was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @event.destroy
    redirect_to events_url, notice: 'Event was successfully destroyed.'
  end

  private
    def verify_is_admin
      (current_user.nil?) ? redirect_to(events_path) : (redirect_to(root_path) unless current_user.admin?)
    end

    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:title, :starts_at, :description, :location, :partner, :external_url, :ticket_url, :event_type, :image)
    end
end
