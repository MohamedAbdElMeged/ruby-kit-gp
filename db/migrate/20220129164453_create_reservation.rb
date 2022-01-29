class CreateReservation < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :doctor_id
      t.references :patient_id
      t.references :appointment_id
      t.text :case
    end
  end
end


#doctor_id , patient_id , case, appointment_id 