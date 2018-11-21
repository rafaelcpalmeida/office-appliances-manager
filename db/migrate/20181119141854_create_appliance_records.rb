class CreateApplianceRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :appliance_records do |t|
      t.string :type, null: false
      t.references :appliance, foreign_key: true
      t.float :decibels_value
      t.float :temperature
      t.float :carbon_dioxide_level
      t.float :humidity_level

      t.timestamps
    end
  end
end
