class TeamsController < ApplicationController
  before_action :authenticate_user!, only: :index

  def index
    @teams = Team.where(player_1: current_user.id)
    if @teams.empty?
      @teams = Team.where(player_2: current_user.id)
    end
  end

  def show
    @teams = Teams.find(params[:id])
  end

  def new
    @team = Team.new
    @team_visitor = Team.new
    @schedule = Schedule.find(params[:id])
    @team.player_1 = @schedule.user_id
    @team.player_2 = @schedule.partner["duo"]
  end

  def create
    @team = Team.new
    @team_visitor = Team.new

    @team.player_1 = params[:player_1].to_i
    @team.player_2 = params[:player_2].to_i
    @team.schedule_id = params[:schedule_id].to_i

    @team_visitor.player_1 = params[:player_3].to_i.freeze
    @team_visitor.player_2 = params[:player_4].to_i
    @team_visitor.schedule_id = params[:schedule_id].to_i

    @team.status = "confirmed"
    @team_visitor.status = "confirmed"
    if @team.save && @team_visitor.save
      redirect_to teams_path
      flash[:notice] = "Partida Confirmada!"
    else
      render :new
    end
  end

  private

  def team_params
    params.require(:team).permit(:schedule_id, :player_1, :player_2, :player_3, :player_4)
  end

end
