class UsersController < ApplicationController
  def index
    @users = User.all
    if params[:query].present?
      @searchs = User.search_name_dificculty(params[:query])
    else
      @searchs = User.all
    end
  
  def show
    @user = current_user.id
    @schedules = Schedule.all
  end

  def edit
    @user = current_user.id
  end

  def update
    @user = current_user
    @user.update!(user_params)
    redirect_to current_user
  end

  private

  def user_params
    params.require(:user).permit(:name, :last_name, :email, :about_me, :difficulty)
  end
end
