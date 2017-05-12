class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string     :project_name
      t.text       :activity
      t.string     :goal
      t.string     :start
      t.string     :finish
      t.integer    :status
      t.timestamps
    end
  end
end
