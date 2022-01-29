class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.integer :age
    end
  end
end
