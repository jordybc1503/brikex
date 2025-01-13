class Project < ApplicationRecord
  def index
    @projects = Project.all
  end
end
