class PagesController < ApplicationController
  def index
    @projects = Project.all
  end

  def about_us

  end

  def contact_us

  end
end
