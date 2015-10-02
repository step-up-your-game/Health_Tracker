class ExerciseType < ActiveRecord::Base
  belongs_to :exercise
  def self.type
    @type
  end
end
