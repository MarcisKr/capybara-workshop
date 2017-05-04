When(/^I am on Appimation home page/) do
  visit('/')
  find(:id, 'start_button').visible?
  find(:id, 'login-b').visible?
  find(:id, 'signup-b').visible? 
end

Then(/^I click Try Now/) do
  find(:id, 'start_button').click
end

Then(/^I enter (.*) in SignUp email/) do |email|
  find(:xpath, '//*[@id="signup"]/descendant::input[@type="email"]').send_keys email
end

Then(/^I enter (.*) in SignUp passwords/) do |password|
  find(:xpath, '//*[@id="signup"]/descendant::input[@name="password1"]').send_keys password
  find(:xpath, '//*[@id="signup"]/descendant::input[@name="password2"]').send_keys password
end

Then(/^I enter (.*) in SignUp project name/) do |pName|
  find(:xpath, '//*[@id="signup"]/descendant::input[@name="project_name"]').send_keys pName
end

Then(/^I cancel SignUp/) do
  find(:xpath, '//*[@id="signup"]/form/descendant::img[@class="closecross"]').click
end

When(/^I open login modal/) do
  find(:xpath, '//*[@id="login-b"]').click
end

Then(/^I enter (.*) in Login email/) do |email|
  find(:xpath, '//*[@id="login"]/form/div/descendant::input[@type="email"]').send_keys email
end

Then(/^I enter (.*) in Login password/) do |password|
  find(:xpath, '//*[@id="login"]/form/descendant::input[@type="password"]').send_keys password
end

Then(/^I select Login button/) do
  find(:xpath, '//*[@id="login"]/form/button').click
end

Then(/^I have successfully logged in/) do
  find(:xpath, '//*[@id="testDataTitle"]').visible?
  find(:xpath, '//*[@id="logoutButton"]').visible?
end