class CreateIslands < ActiveRecord::Migration[5.2]
  def change
    create_table :islands do |t|
      t.string :name
      t.string :country
      t.string :location
      t.text :description
      t.integer :price
      t.string :month 

      t.timestamps
    end
  end
end
