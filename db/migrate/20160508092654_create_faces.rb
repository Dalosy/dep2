class CreateFaces < ActiveRecord::Migration
  def change
    create_table :faces do |t|
      t.integer :card_id
      t.string :fio
      t.string :position

      t.timestamps null: false
    end
  end
end
