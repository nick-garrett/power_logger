class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.boolean :state, :default => false
      t.timestamps
    end
  end
end
