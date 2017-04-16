class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:index, :show]

  def index
    @kanto_users = User.where(location: 0)
    @kansai_users = User.where(location: 1)
    @kyushu_users = User.where(location: 2)
  end

  def show
  end

  private

  def set_user
    @user = User.find_by(params[:id])
  end

  def user_params
    params.require(:prototype).permit(
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
