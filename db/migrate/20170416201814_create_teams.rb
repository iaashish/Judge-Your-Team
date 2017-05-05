class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.text :correctness
      t.text :creativity
      t.text :relevance
      t.text :sustainability
      t.text :userexperience
      t.text :correctness_comments
      t.text :creativity_comments
      t.text :relevance_comments
      t.text :sustainability_comments
      t.text :userexperience_commoents
      t.references :user, foreign_key: true

      t.timestamps
    end
	add_index :teams, [:user_id, :created_at]
  end
  
  
end
