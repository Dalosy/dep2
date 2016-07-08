class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.integer :card_id
      t.decimal :summ
      t.datetime :deal_date
      t.string :status
      t.string :agreement

      t.timestamps null: false
    end
  end
end
