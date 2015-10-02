class AddColumnTypeToExercise < ActiveRecord::Migration
  def change
    add_column :exercises, :type, :integer
    add_index :exercises, :type
  end
end
