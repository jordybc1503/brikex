class AddProjectTypeToProjects < ActiveRecord::Migration[7.1]
  def change
    add_reference :projects, :project_type, null: false, foreign_key: true
  end
end
