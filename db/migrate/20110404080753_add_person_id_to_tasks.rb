class AddPersonIdToTasks < ActiveRecord::Migration
  def self.up
    add_column :tasks, :person_id, :integer
  end

  def self.down
    remove_column :tasks, :person_id
  end
end
