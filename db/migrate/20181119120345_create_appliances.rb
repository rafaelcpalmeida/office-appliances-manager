class CreateAppliances < ActiveRecord::Migration[5.2]
  def change
    create_table :appliances do |t|
      t.string :type, null: false
      t.references :location, foreign_key: true
      t.string :name
      t.string :ip
      t.float :decibels_limit

      t.timestamps
    end
  end
end
