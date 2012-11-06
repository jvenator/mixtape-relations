class ChangeColumnInMixtapes < ActiveRecord::Migration
  def up
    rename_column  :mixtapes, :owner_id, :user_id
  end

  def down
    rename_column  :mixtapes, :user_id, :owner_id
  end
end
