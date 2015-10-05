class DashboardController < ApplicationController
  def index
    @weight = Weight.weight
    @steps = Step.step
    @kilocals = Kilocal.kilocal
    @total_exercises = Exercise.total_exercises
  end
end
