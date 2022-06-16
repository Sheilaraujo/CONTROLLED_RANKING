class SchedulesController < ApplicationController
  # def index
  #   @schedules = Schedule.all
  #   @users = User.all
  def index
<<<<<<< HEAD
<<<<<<< HEAD
    if params [:query].present?
      @results = PgSearch.multisearch(params[:query])
    else
      @results = Schedule.all
    end
end
=======
    @schedules = Schedule.all
=======
>>>>>>> b3fafde64a9d73b94346e4a639d9ba13083adc3f
    @users = User.all
    if params[:query].present?
      @schedules = Schedule.get_by_place(params[:query])
    elsif params[:date].present?
      @schedules = Schedule.search_date_place(params[:date])
    else
      @schedules = Schedule.all
    end
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
