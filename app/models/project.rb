class Project < ApplicationRecord
  belongs_to :admin
  belongs_to :promotor
  belongs_to :project_type
end
