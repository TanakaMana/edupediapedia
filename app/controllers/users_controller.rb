class UsersController < ApplicationController

  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @kanto_users = User.where(location: 'kanto')
    @kansai_users = User.where(location: 'kansai')
    @kyushu_users = User.where(location: 'kyushu')
  end

  def show
  end

  def edit
  end

  def update
    @user.update(user_params)
    if @user.save
      redirect_to user_path(@user.id), notice: 'メンバー情報が更新されました。'
    end
  end

  def destroy
    if @user.destroy
      redirect_to root_path, notice: 'メンバーが削除されました。'
    end
  end

  def csv_output
    @users = User.all
    respond_to do |format|
      format.csv do
        send_data render_to_string, filename: 'edupedia_member.csv', type: :csv
      end
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
