class AddPromotorToProjects < ActiveRecord::Migration[7.1]
  def change
    add_reference :projects, :promotor, null: false, foreign_key: true
  end
end
