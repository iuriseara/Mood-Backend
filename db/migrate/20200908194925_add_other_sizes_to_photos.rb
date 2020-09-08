class AddOtherSizesToPhotos < ActiveRecord::Migration[6.0]
  def change
    add_column :photos, :original, :string
    add_column :photos, :portrait, :string
    add_column :photos, :large, :string
  end
end
