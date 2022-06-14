class SchedulesController < ApplicationController
  # def index
  #   @schedules = Schedule.all
  #   @users = User.all
  def index
<<<<<<< HEAD
    if params [:query].present?
      @results = PgSearch.multisearch(params[:query])
    else
      @results = Schedule.all
    end
end
=======
    @schedules = Schedule.all
    @users = User.all
    @user_schedules = Schedule.where("partner ->'duo' = ?", current_user.id.to_s)
  end
>>>>>>> 44e6f1098d4c88873f2e1ebf3c67e3d178576df7

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
