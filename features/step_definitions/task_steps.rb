Given /^a task_group exists$/ do
  @project = Project.create!(:project_title => "New Proj", :project_description => "New Proj Description")
  @task_group = @project.task_groups.create!(:group_title => "New Grp", :group_description => "New Grp Description")
end

Then /^(\d+) task should exist$/ do |number|
  @task_group.tasks.count.should == 1
end
