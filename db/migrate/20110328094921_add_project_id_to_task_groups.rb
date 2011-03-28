class AddProjectIdToTaskGroups < ActiveRecord::Migration
  def self.up
    add_column :task_groups, :project_id, :integer
  end

  def self.down
    remove_column :task_groups, :project_id
  end
end
