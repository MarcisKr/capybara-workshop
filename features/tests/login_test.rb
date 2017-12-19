class LoginTest
    def initialize(pages)
        @pages = pages
    end

    def login_with_user
        @pages.page_home.click_login
        @pages.page_home.login(Users.login_user)
        @pages.page_home.confirm_login
    end

    def project_page_visible?
        @pages.page_project.visible?
    end
end