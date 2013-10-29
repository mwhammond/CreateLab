class UsersController < ApplicationController
  def index
    @users = User.all
    @crete_lab_team = User.where(team: true)
  end
end
