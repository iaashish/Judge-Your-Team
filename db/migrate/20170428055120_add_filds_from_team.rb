class AddFildsFromTeam < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :teamname, :text
  end
end
