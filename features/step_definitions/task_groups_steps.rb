Given /^the following task_groups:$/ do |task_groups|
  TaskGroups.create!(task_groups.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) task_groups$/ do |pos|
  visit task_groups_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following task_groups:$/ do |expected_task_groups_table|
  expected_task_groups_table.diff!(tableish('table tr', 'td,th'))
end
