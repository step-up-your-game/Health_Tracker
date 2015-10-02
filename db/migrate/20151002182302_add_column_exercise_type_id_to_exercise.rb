class AddColumnExerciseTypeIdToExercise < ActiveRecord::Migration
  def change
    add_column :exercises, :exercise_type_id, :integer
    add_index :exercises, :exercise_type_id
  end
end
