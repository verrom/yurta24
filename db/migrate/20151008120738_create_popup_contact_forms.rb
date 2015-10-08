class CreatePopupContactForms < ActiveRecord::Migration
  def change
    create_table :popup_contact_forms do |t|
      t.string :name
      t.string :phone

      t.timestamps null: false
    end
  end
end
