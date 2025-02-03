class CreateProjectEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :project_events do |t|
      t.references :project
      t.references :user
      t.string :type
      t.jsonb :data
      t.references :comment
      t.timestamps
    end
  end
end
