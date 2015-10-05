class DashboardController < ApplicationController
  def index
    @weight = Weight.weight
    @steps = Step.step
    @kilocals = Kilocal.kilocal
    @net = Kilocal.kilocal - (Step.step/25) - Exercise.burned
    @exercise = Exercise.exercise
  end
end
