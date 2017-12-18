When(/^I am on Appimation home page/) do
  @tests.signup_tests.load_home_page
end

Then(/^I submit signup details/) do
  @tests.signup_tests.open_signup_form_submit_details
end

Then(/^I see Appimation home page/) do
  @tests.signup_tests.home_page_visible?
end

When(/^I log in/) do
  @tests.login_tests.login_with_user
end

Then(/^I am on project page/) do
  @tests.login_tests.project_page_visible?
end