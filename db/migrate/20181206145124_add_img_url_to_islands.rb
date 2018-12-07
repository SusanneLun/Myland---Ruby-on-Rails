class AddImgUrlToIslands < ActiveRecord::Migration[5.2]
  def change
    add_column :islands, :img_url, :string
  end
end
