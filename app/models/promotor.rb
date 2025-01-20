class Promotor < ApplicationRecord
  has_one_attached :image
  has_many :projects

end
