class SchedulesController < ApplicationController
  # def index
  #   @schedules = Schedule.all
  #   @users = User.all
  def index
    if params [:query].present?
      @results = PgSearch.multisearch(params[:query])
    else
      @results = Schedule.all
    end
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

  private

  def schedule_params
    params.require(:schedule).permit(:date, :place, :user_id)
  end
end
