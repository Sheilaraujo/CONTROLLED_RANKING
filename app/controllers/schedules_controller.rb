class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
    @users = User.all
    if params[:query].present?
      @results = Schedule.search_date_place(params[:query])
    else
      @results = Schedule.all
    end
    # @user_schedules = Schedule.where("partner ->'duo' = ?", current_user.id.to_s ||
    # @user_schedules = Schedule.where(partner[duo] = current_user.id.to_s
    #   || partner[opponent_1] = current_user.id.to_s || partner[opponent_2] = current_user.id.to_s)

  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    respond_to do |format|
      if @schedule.save
        format.html { redirect_to schedule_path(:new), notice: "Schedule was successfully created." }
      else
        # binding.pry
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def destroy
    @schedule.destroy
    render :new
  end

  def update
    @schedule = Schedule.find(params[:id])
    @schedule.partner["duo"]  = current_user.id
    if @schedule.save
      redirect_to list_schedules_path
    end
  end

  def list
    @teams = Team.all
    @schedules = Schedule.all
    @users = User.all
  end

  private

  def schedule_params
    params.require(:schedule).permit(:date, :place, :partner, :id, :user_id)
  end
end
