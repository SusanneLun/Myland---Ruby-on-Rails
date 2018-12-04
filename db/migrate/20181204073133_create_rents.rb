class CreateRents < ActiveRecord::Migration[5.2]
  def change
    create_table :rents do |t|
      t.string :month
      t.string :duration

      t.timestamps
    end
  end
end
