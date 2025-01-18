class ProjectsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :authenticate_admin!, except: [:index, :show]

  def index
    @projects = Project.all
    @open_projects = Project.where(status: 'Abierto')
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(project_params)
    redirect_to projects_path
  end
end
