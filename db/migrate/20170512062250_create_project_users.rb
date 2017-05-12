class CreateProjectUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :project_users do |t|
      t.references :project, index: true, null: false
      t.references :user, index: true, null: false
      t.timestamps
    end
  end
end
