class CreateApiV1Photos < ActiveRecord::Migration[6.0]
  def change
    create_table :api_v1_photos do |t|
      t.string :img_src
      t.string :img_name
      t.string :photographer
      t.integer :likes

      t.timestamps
    end
  end
end
