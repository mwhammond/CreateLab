class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  # GET /jobs
  def index
    @jobs = Job.all
  end

  # GET /jobs/1
  def show
  end

  # GET /jobs/new
  def new
    @job = Job.new
  end

  # GET /jobs/1/edit
  def edit
  end

  # POST /jobs
  def create
    @job = Job.new(job_params)

    if @job.save
      redirect_to @job, notice: 'Job was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /jobs/1
  def update
    if @job.update(job_params)
      redirect_to @job, notice: 'Job was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /jobs/1
  def destroy
    @job.destroy
    redirect_to jobs_url, notice: 'Job was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def job_params
      params.require(:job).permit(:portfolio_id, :job_title, :job_description, :skills, :contact_email)
    end
end
