class AddImageUidToItems < ActiveRecord::Migration
  def change
    add_column :items, :image_uid, :string
  end
end
