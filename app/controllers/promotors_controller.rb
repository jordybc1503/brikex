class PromotorsController < ApplicationController
  def index
    @promotors = Promotor.all
  end
end
