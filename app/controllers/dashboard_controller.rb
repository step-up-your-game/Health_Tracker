class DashboardController < ApplicationController
  def index
    @weight = Weight.weight
    @steps = Step.step
    @kilocals = Kilocal.kilocal
  end
end
