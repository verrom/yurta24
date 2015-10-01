class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :variable1
      t.string :variable2
      t.string :variable3
      t.string :variable4
      t.string :value1
      t.string :value2
      t.string :value3
      t.string :value4
      t.string :comment


      t.timestamps null: false
    end
  end
end
