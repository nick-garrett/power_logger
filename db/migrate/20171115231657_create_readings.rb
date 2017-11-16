class CreateReadings < ActiveRecord::Migration[5.1]
  def change
    create_table :readings do |t|
      t.decimal :usage, :null => false
      t.integer :device_id, :null => false
      t.timestamps
    end
  end
end
