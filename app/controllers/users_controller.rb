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
    if @user.save
      redirect_to user_path(@user.id), notice: 'ユーザー情報が更新されました。'
    end
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
      :birthplace,
      :location,
      :team_main,
      :team_sub,
      :position,
      :doing,
      :future_doing,
      :trigger,
      :start_time,
      :finish_time,
      :education_interest,
      :future_work,
      :specially,
      :improve,
      :hobby,
      :motto,
      :roje,
      :outside,
      :memo
    )
  end

end
