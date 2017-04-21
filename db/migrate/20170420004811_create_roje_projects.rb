class CreateRojeProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :roje_projects do |t|
      t.integer    :project_name
      t.references :user
      t.timestamps
    end
  end
end
