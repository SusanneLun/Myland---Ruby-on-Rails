class CreateIslands < ActiveRecord::Migration[5.2]
  def change
    create_table :islands do |t|
      t.string :name
      t.string :country
      t.string :location
      t.text :description
      t.intiger :price

      t.timestamps
    end
  end
end
