class TeamsController < ApplicationController
  def index
    @teams = Team.all
    @schedules = Schedule.all
    @users = User.all
  end

  def show
    @teams = Teams.find(params[:id])
  end

  def new
    @teams = Teams.new
  end

  def create
    @teams = teams.new(teams_params)
    if @teams.save
      redirect_to teams_path(@teams)
    else
      render :new
    end
  end

end
