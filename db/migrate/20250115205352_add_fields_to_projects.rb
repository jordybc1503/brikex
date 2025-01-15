class AddFieldsToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :location, :string
    add_column :projects, :target_amount, :decimal
    add_column :projects, :raised_amount, :decimal
    add_column :projects, :return_rate, :decimal
    add_column :projects, :duration, :integer
  end
end
