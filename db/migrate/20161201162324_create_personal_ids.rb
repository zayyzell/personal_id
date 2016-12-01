class CreatePersonalIds < ActiveRecord::Migration[5.0]
  def change
    create_table :personal_ids do |t|
      t.string :name
      t.date :dob
      t.string :language
      t.string :phone_1
      t.string :phone_2
      t.string :email
      t.string :emer_contact_name
      t.string :emer_contact_no
      t.string :prim_phys_name
      t.string :prim_phys_no
      t.string :health_iss_name
      t.string :health_iss_no
      t.string :health_mem_id

      t.timestamps
    end
  end
end
