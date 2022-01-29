class CreateAppointment < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :doctor
      t.time :start_at
      t.time :end_at
      
      
    end
  end
end
