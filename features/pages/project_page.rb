class ProjectPage < BasePage
    attr_accessor :button_start
  def initialize
    @user_email = Element.new(:xpath, '//div[@id = "userEmail"]/descendant::span[contains(text(), "auto_apimation@mailinator.com")]')
    @project_name = Element.new(:xpath, '//div[@id = "dropdownMenu1"]/descendant::a[contains(text(), "Capybara-automation")]')
    @title_test_data = Element.new(:id, 'testDataTitle')
    @frame_steps = Element.new(:id, 'steps')
    @frame_cases = Element.new(:id, 'cases')
    @frame_sets = Element.new(:id, 'sets')
    @button_logout = Element.new(:id, 'logoutButton')
  end

  def visible?
    @user_email.visible?
    @project_name.visible?
    @title_test_data.visible?
    @frame_steps.visible?
    @frame_cases.visible?
    @frame_sets.visible?
    @button_logout.visible?
  end
end