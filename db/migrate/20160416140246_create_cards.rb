class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :client
      t.string :address
      t.timestamps null: false
    end
  end
end
