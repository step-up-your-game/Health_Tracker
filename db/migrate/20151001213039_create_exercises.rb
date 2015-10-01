class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.decimal :hours
      t.integer :cals_per_hour

      t.timestamps null: false
    end
  end
end
