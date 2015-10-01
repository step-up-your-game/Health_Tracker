class CreateKilocals < ActiveRecord::Migration
  def change
    create_table :kilocals do |t|
      t.integer :number

      t.timestamps null: false
    end
  end
end
