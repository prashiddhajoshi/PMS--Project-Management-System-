class AddTaskIdToPeople < ActiveRecord::Migration
  def self.up
    add_column :people, :task_id, :integer
  end

  def self.down
    remove_column :people, :task_id
  end
end
