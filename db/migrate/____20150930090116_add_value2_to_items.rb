class AddValue2ToItems < ActiveRecord::Migration
  def change
    add_column :items, :value2, :string
  end
end
