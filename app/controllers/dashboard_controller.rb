class DashboardController < ApplicationController
  def index
    @weight = Weight.weight
    @steps = Step.steps
    @calories_consumed = Kilocal.calories_consumed
    @exercise = Exercise.preformed
    @exercise_type = ExerciseType.type
  end

  def show
  end
end
