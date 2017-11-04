class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.string :customer_id
      t.decimal :bill_amount
      t.date :valid_up_to
      t.string :transaction_type

      t.timestamps
    end
  end
end
