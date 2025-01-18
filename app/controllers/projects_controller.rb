class ProjectsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :authenticate_admin!, except: [:index]

  def index
    @projects = Project.all
    @open_projects = Project.where(status: 'Abierto')
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(project_params)
    redirect_to projects_path
  end
end
