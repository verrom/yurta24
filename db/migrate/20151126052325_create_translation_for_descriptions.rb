class CreateTranslationForDescriptions < ActiveRecord::Migration
  def up
    create_table :translation_for_descriptions do |t|
    t.timestamps
    end
    Description.create_translation_table! :title => :string,
      :text => {:type => :text, :null => false, :default => 'abc'}
  end
  
  def down
    drop_table :translation_for_articles
    Description.drop_translation_table!
  end
end