Feature: Demo Feature

    Scenario: Open SignUp Page
        Given I am on Appimation home page
        When I click Try Now
        Then I enter blahblah@blah.meh in SignUp email
        Then I enter Password123 in SignUp passwords
        Then I enter somethingSomethingInTheMonthOfMay in SignUp project name
        Then I cancel SignUp

    Scenario: Log in to the page
        Given I am on Appimation home page
        When I open login modal
        Then I enter blah@blah.meh in Login email
        And I enter 11111111 in Login password
        And I select Login button
        And I have successfully logged in
