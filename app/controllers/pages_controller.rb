class PagesController < ApplicationController
  def index
    @projects = Project.all
  end
end
