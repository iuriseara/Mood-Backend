class AddMediumToPhotos < ActiveRecord::Migration[6.0]
  def change
    add_column :photos, :medium, :string
  end
end
