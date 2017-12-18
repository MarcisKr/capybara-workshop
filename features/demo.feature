Feature: Demo Feature

    Scenario: Open SignUp Page
        Given I am on Appimation home page
        When I submit signup details
        Then I see Appimation home page

    Scenario: Login positive
        Given I am on Appimation home page
        When I log in
        Then I am on project page