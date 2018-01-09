class AddThumbImageToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :thumb_image, :string
  end
end
