Then /^(\d+) user should exist$/ do |number|
  Person.count.should == 1
end


Given /^a person exists with "([^"]*)" and password "([^"]*)"$/ do |email, pass|
  Person.create!(:email => email, :password => pass)
end