class AddDescriptionColumnsToPictures < ActiveRecord::Migration
  def change
  	add_column :pictures, :image_uid, :string
  end
end
