class AddThumbnailImgToIslands < ActiveRecord::Migration[5.2]
  def change
    add_column :islands, :thumbnail_img, :string
  end
end
