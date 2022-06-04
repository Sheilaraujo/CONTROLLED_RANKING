class SchedulesController < ApplicationController
  def index
    @schedule = Schedule.all
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      redirect_to schedule_path(:new)
    else
      render :new
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
