class AddFildswFromTeam < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :correctness, :text
    
  end
end
