class CreateEduTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :edu_teams do |t|
      t.integer    :team_name
      t.references :user
      t.timestamps
    end
  end
end
