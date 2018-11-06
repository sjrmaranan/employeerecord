class CreateEmpRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :emp_records do |t|
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.string :address
      t.string :mobile
      t.string :landline
      t.string :email
      t.string :unit
      t.string :idnumber
      t.string :tin
      t.string :designation
      t.text :additionalinfo

      t.timestamps
    end
  end
end
