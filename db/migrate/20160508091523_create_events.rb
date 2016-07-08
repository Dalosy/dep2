class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :card_id
      t.integer :deal_id
      t.integer :contact_id
      t.integer :event_type_id
      t.datetime :event_date
      t.decimal :event_sum

      t.timestamps null: false
    end
  end
end
