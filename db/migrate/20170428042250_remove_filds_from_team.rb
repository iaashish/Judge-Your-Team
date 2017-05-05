class RemoveFildsFromTeam < ActiveRecord::Migration[5.0]
  def change
    remove_column :teams, :correctness, :text
  end
  
  def add
	add_column :teams, :teamname, :text
 end
end
