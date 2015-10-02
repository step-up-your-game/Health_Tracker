class Exercise < ActiveRecord::Base
  has_many :types
  def self.performed
    @performed
  end
  def self.type
    @type = ExerciseType.find(params[:id])
  end
end
