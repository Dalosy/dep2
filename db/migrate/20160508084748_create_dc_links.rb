class CreateDcLinks < ActiveRecord::Migration
  def change
    create_table :dc_links do |t|
      t.integer :deal_id
      t.integer :contact_id

      t.timestamps null: false
    end
  end
end
