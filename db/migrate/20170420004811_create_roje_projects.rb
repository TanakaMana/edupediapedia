class CreateRojeProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :roje_projects do |t|

      t.timestamps
    end
  end
end
