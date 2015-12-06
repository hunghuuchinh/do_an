class CreatePitches < ActiveRecord::Migration
  def change
    create_table :pitches do |t|
      t.string :name
      t.string :address
      t.integer :quantity
      t.boolean :rent_shoes
      t.boolean :rent_kit
      t.string :county
      t.boolean :sell_water
      t.integer :cost
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :pitches, [:user_id, :created_at]
  end
end
