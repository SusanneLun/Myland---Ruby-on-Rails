class CreateRents < ActiveRecord::Migration[5.2]
  def change
    create_table :rents do |t|
      t.integer :user_id
      t.integer :island_id

      t.timestamps
    end
  end
end
