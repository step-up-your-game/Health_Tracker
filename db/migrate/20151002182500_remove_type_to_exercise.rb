class RemoveTypeToExercise < ActiveRecord::Migration
  def change
    remove_index :exercises, :type
    remove_column :exercises, :type, :integer
  end
end
