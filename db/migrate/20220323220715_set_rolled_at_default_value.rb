class SetRolledAtDefaultValue < ActiveRecord::Migration[7.0]
  def change
    change_column_default :rolls, :rolled_at, DateTime.now
  end
end
