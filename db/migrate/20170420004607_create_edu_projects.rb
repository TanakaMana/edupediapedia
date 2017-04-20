class CreateEduProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :edu_projects do |t|

      t.timestamps
    end
  end
end
