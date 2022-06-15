class TeamsController < ApplicationController
  before_action :authenticate_user!, only: :index
  def index
    @teams = Team.where(player_1: current_user.id)
  end

  def show
    @teams = Teams.find(params[:id])
  end

  def new
    @team_home = Team.new
    @team_visitor = Team.new
    @schedule = Schedule.find(params[:format])
    @team_home.player_1 = @schedule.user_id
    @team_home.player_2 = @schedule.partner["duo"]
  end

  def create
    @team_home = Team.new
    @team_visitor = Team.new
    @schedule = Schedule.find(params[:format])
    @team_home.player_1 = @schedule.user_id
    @team_home.player_2 = @schedule.partner["duo"]
    @team_home.score = params[:score]
    @team_home.schedule_id = params[:schedule_id]
    if @teams.save
      redirect_to teams_path(@teams)
    else
      render :new
    end
  end

end
