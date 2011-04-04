Given /^the following task_creations:$/ do |task_creations|
  TaskCreations.create!(task_creations.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) task_creations$/ do |pos|
  visit task_creations_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following task_creations:$/ do |expected_task_creations_table|
  expected_task_creations_table.diff!(tableish('table tr', 'td,th'))
end
