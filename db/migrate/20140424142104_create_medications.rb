class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :name
      t.integer :dealable_id
      t.string :dealable_type

      t.timestamps
    end
  end
end
