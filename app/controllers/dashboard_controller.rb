class DashboardController < ApplicationController
  def index
    @weight = Weight.weight
  end
end
