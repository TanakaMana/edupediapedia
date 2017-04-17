class UsersController < ApplicationController

  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update]

  def index
    @kanto_users = User.where(location: 0)
    @kansai_users = User.where(location: 1)
    @kyushu_users = User.where(location: 2)
  end

  def show
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :encrypted_password,
      :university,
      :faculty,
      :department,
      :year,
      :location,
      :team,
      :position,
      :doing,
      :future_doing,
      :start_time,
      :trigger,
      :education_interest,
      :future_work,
      :specially,
      :improve,
      :hobby,
      :like,
      :motto,
      :roje,
      :outside,
      :memo
    )
  end

end
