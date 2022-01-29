class CreateRate < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.references :reservation_id
      t.integer :rate_value
      t.text :comment
    end
  end
end
#Rate: appointment_id , rate_value, comment 