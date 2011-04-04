Given /^sleep for (\d+) seconds$/ do |duration|
  sleep(duration.to_i)
end


Given /^I am authenticated$/ do
  Person.create!(:email => "prasid@gmail.com", :password => "secret")

  visit path_to("login page")
  fill_in("Email", :with => "prasid@gmail.com")
  fill_in("Password", :with => "secret")
  click_button("Sign in")
end