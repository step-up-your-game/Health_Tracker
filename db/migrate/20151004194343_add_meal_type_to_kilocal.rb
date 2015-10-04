class AddMealTypeToKilocal < ActiveRecord::Migration
  def change
    add_column :kilocals, :meal_type, :string
  end
end
