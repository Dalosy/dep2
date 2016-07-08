class CreateTelefones < ActiveRecord::Migration
  def change
    create_table :telefones do |t|
      t.integer :card_id
      t.integer :face_id
      t.string :number
      t.string :number_type

      t.timestamps null: false
    end
  end
end
