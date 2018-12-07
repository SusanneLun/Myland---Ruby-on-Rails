class AddMonthToRents < ActiveRecord::Migration[5.2]
  def change
    add_column :rents, :month, :string
  end
end
