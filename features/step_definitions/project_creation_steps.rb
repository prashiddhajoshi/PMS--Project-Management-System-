Given /^the following project_creations:$/ do |project_creations|
  ProjectCreation.create!(project_creations.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) project_creation$/ do |pos|
  visit project_creations_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following project_creations:$/ do |expected_project_creations_table|
  expected_project_creations_table.diff!(tableish('table tr', 'td,th'))
end
