class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.decimal :weight

      t.timestamps null: false
    end
  end
end
