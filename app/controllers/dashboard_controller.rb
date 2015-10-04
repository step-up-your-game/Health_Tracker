class DashboardController < ApplicationController
  def index
    @weight = Weight.weight
    @steps = Step.step
  end
end
