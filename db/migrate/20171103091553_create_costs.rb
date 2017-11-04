class CreateCosts < ActiveRecord::Migration[5.1]
  def change
    create_table :costs do |t|
      t.datetime :date
      t.string :name
      t.string :kind
      t.decimal :cost_amount

      t.timestamps
    end
  end
end
