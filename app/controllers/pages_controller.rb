class PagesController < ApplicationController
  def index
    @projects = Project.all.limit(6)
  end

  def about_us

  end

  def contact_us

  end

  def calculator

  end
end
