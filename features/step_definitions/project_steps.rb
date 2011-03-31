Then /^(\d+) project should exist$/ do |number|
 Project.count.should == 1
end
