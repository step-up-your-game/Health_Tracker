class Exercise < ActiveRecord::Base
  belongs_to :exercise_type
  validates :hours, :cals_per_hour, :exercise_type_id, presence: true
end
