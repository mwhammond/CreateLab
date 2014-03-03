class MentorsController < ApplicationController
  before_action :set_mentor, only: [:show, :edit, :update, :destroy]
  before_action :verify_is_admin, only:[:create, :new, :edit, :update, :destroy]
  
  
  def index
    @mentors = Mentor.order("name ASC")
    #@future_events = Event.where("starts_at >= '#{Time.now}'")
    #@events = @future_events.order("starts_at")
  end

  def show
  end

  def new
    @mentor = Mentor.new
  end

  def edit
  end

  def create
    @mentor = Mentor.new(mentor_params)

    if @mentor.save
      redirect_to @mentor, notice: 'Mentor record was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @mentor.update(mentor_params)
      redirect_to @mentor, notice: 'Mentor was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @mentor.destroy
    redirect_to mentors_url, notice: 'Mentor listing was successfully destroyed.'
  end

  private
    def verify_is_admin
      (current_user.nil?) ? redirect_to(mentors_path) : (redirect_to(root_path) unless current_user.admin?)
    end

    def set_mentor
      @mentor = Mentor.find(params[:id])
    end

    def mentor_params
      params.require(:mentor).permit(:name, :sector, :image, :desc, :link)
    end
end
