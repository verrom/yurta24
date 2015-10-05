class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
