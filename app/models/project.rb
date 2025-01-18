class Project < ApplicationRecord
  belongs_to :admin
  belongs_to :promotor
  belongs_to :project_type

  has_many_attached :images do |attachable|
    attachable.variant :thumb, resize_to_limit: [50, 50]
  end


end
