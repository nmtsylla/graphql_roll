class CreateDices < ActiveRecord::Migration[7.0]
  def change
    create_table :dices do |t|
      t.integer :value
      t.string :face
      t.references :roll, null: false, foreign_key: true

      t.timestamps
    end
  end
end
