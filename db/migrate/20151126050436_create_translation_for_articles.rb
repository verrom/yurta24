class CreateTranslationForArticles < ActiveRecord::Migration
  def up
    create_table :translation_for_articles do |t|
    t.timestamps
    end
    Article.create_translation_table! :title => :string,
      :text => {:type => :text, :null => false, :default => 'abc'}
  end
  
  def down
    drop_table :translation_for_articles
    Article.drop_translation_table!
  end
end