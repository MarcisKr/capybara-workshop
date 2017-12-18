When(/^I am on Appimation home page/) do
  @tests.signup_tests.load_home_page
end

Then(/^I submit signup details/) do
    @tests.signup_tests.open_signup_form_submit_details
end

Then(/^I see Appimation home page/) do
    @tests.signup_tests.home_page_visible?
end



# When(/^I am on Appimation home page/) do
#   @pages.page_home.load
#   @pages.page_home.visible?
# end

Then(/^I click Try Now/) do
  @pages.page_home.click_try_now
end

Then(/^I enter (.*) in Login email/) do |email|
  @pages.page_home.enter_login_email(email)
end

Then(/^I enter (.*) in Login password/) do |password|
  @pages.page_home.enter_login_password(password)
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