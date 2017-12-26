class RemoveDateFromCost < ActiveRecord::Migration[5.1]
  def change
    remove_column :costs, :date, :datetime
    add_column :costs, :cost_date, :string
  end
end
