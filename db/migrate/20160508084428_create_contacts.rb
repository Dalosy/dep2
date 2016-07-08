class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :card_id
      t.datetime :guaranty_date
      t.decimal :guaranty_sum
      t.string :dep_reason
      t.string :result
      t.string :dep_how

      t.timestamps null: false
    end
  end
end
