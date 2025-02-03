class CreateComment < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.references :project, foreign_key: true
      t.references :user
      t.text :text
      t.timestamps
    end
  end
end
