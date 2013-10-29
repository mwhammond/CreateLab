class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  #GET /users/index
  def index
    @users = User.all
    @crete_lab_team = User.where(team: true)
  end
  
  #GET /users/1
  def show
  end
  
  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      redirect_to @user, notice: 'Event was successfully created.'
    else
      render action: 'new'
    end

  end

  def update
    if @user.update_attributes(user_params)
       redirect_to @user, notice: 'User was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
  end
  
  private
  
  def set_user
    @user = User.find(params[:id])
  end
  
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :department, :team, :mentor, :admin)
  end
end
