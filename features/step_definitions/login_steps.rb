When(/^I am on Appimation home page/) do
  @pages.page_home.load
  @pages.page_home.visible?
end

Then(/^I click Try Now/) do
  @pages.page_home.click_try_now
end

Then(/^I enter (.*) in Login email/) do |email|
  @pages.page_home.enter_login_email(email)
end

Then(/^I enter (.*) in SignUp email/) do |email|
  @pages.page_home.enter_signup_email(email)
end

Then(/^I enter (.*) in Login password/) do |password|
  @pages.page_home.enter_login_password(password)
end

Then(/^I enter (.*) in SignUp passwords/) do |password|
  @pages.page_home.enter_passwords(password)
end

Then(/^I enter (.*) in SignUp project name/) do |name|
  @pages.page_home.enter_project_name(name)
end

Then(/^I cancel SignUp/) do
  @pages.page_home.cancel_signup
end

Then(/^I submit signup details/) do
  @pages.page_home.submit_signup("email@test.com", "parole", "testProject")
end

Then(/^I click Login/) do
  @pages.page_home.click_login
end

Then(/^I confirm login/) do
  @pages.page_home.confirm_login
end

When(/^I log in with user (.*) (.*)/) do |email, password|
  @pages.page_home.click_login
  @pages.page_home.login(email, password)
  @pages.page_home.confirm_login
end

Then(/^I am on project page/) do
  @pages.page_project.visible?
end