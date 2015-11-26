class CreateTranslationForItems < ActiveRecord::Migration
  def up
    create_table :translation_for_items do |t|
    t.timestamps
    end
	Item.create_translation_table! :item_name => :string,
      :variable1 => :string, :variable2 => :string, :variable3 => :string, :variable4 => :string, 
      :value1 => :string, :value2 => :string, :value3 => :string, :value4 => :string, :comment => :string  
  end
  
  def down
    drop_table :translation_for_items
    Item.drop_translation_table!
  end
end