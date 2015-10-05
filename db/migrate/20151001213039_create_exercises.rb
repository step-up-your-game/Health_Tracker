class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.decimal :hours
      t.integer :number

      t.timestamps null: false
    end
  end
end
