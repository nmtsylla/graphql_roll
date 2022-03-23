class CreateRolls < ActiveRecord::Migration[7.0]
  def change
    create_table :rolls do |t|
      t.float :total
      t.datetime :rolled_at

      t.timestamps
    end
  end
end
