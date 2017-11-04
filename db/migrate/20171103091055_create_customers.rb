class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :customer_id
      t.string :mac_address
      t.string :ip_address
      t.string :connection_type
      t.string :status
      t.string :billing_code
      t.string :address
      t.string :contact_no
      t.string :contact_person
      t.string :email

      t.timestamps
    end
  end
end
