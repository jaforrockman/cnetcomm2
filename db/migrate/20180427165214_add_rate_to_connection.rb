class AddRateToConnection < ActiveRecord::Migration[5.1]
  def change
    add_column :connections, :rate, :decimal
  end
end
