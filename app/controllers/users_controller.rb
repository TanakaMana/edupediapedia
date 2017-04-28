class UsersController < ApplicationController

  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update]

  def index
    @kanto_users = User.where(location: 0)
    @kansai_users = User.where(location: 1)
    @kyushu_users = User.where(location: 2)
  end

  def show
    @edu_team = @user.edu_teams.includes(:user)
    @roje_project = @user.roje_projects.includes(:user)
  end

  def edit
    @edu_teams = EduTeam.new
    @roje_projects = RojeProject.new
  end

  def update
    @user.update(user_params)
    @user.save
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
      :birthplace,
      :location,
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
      :outside,
      :memo,
      edu_teams_attributes: [:id, :user_id, :team_name],
      roje_projects_attributes: [:id, :user_id, :project_name]
      )
  end

end
