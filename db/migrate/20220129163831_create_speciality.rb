class CreateSpeciality < ActiveRecord::Migration[5.2]
  def change
    create_table :specialities do |t|
      t.string :name
    end
    add_reference :doctors, :speciality, index:true
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
