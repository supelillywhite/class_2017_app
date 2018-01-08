class AddThumbnailToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :thumbnail, :string
  end
end
