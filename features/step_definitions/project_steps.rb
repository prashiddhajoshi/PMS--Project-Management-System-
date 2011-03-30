Then /^(\d+) user should exist$/ do |number|
 Project.count.should == 1
end