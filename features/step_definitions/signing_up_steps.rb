Given /^the following signing_ups:$/ do |signing_ups|
  SigningUp.create!(signing_ups.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) signing_up$/ do |pos|
  visit signing_ups_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following signing_ups:$/ do |expected_signing_ups_table|
  expected_signing_ups_table.diff!(tableish('table tr', 'td,th'))
end
