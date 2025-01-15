class Admin::ProjectsController < ApplicationController
  before_action :authenticate_admin!
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end
end
