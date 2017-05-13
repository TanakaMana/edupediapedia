class ProjectsController < ApplicationController

  before_action :set_project, only: [:show, :edit, :update]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(
      :project_name,
      :activity,
      :goal,
      :start,
      :finish,
      :status,
    )
  end

end
