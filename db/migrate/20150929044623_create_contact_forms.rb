class CreateContactForms < ActiveRecord::Migration
  def change
    create_table :contact_forms do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :text

      t.timestamps null: false
    end
  end
end
