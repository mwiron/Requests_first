class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :task
      t.string :beschreibung

      t.timestamps
    end
    add_column :requests, :task_id, :integer
  end
  def down
    drop_table :tasks
    remove_column :requests, :task_id
  end
end
