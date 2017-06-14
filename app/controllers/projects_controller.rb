class ProjectsController < ApplicationController

  before_action :set_project, only: [:show, :edit, :update]

  def index
    @doing_projects = Project.where(status: 'doing')
    @stagnation_projects = Project.where(status: 'stagnation')
    @done_projects = Project.where(status: 'done')
    @planning_projects = Project.where(status: 'planning')
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path, notice: 'プロジェクトが作成されました。'
    end
  end

  def show
  end

  def edit
  end

  def update
    @project.update(project_params)
    if @project.save
      redirect_to project_path(@project.id), notice: 'プロジェクト情報が更新されました。'
    end
  end

  def destroy
    @project.destroy
    redirect_to root_path, notice: 'プロジェクトの削除に成功しました。'
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
