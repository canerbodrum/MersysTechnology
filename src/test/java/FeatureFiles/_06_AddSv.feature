Feature: Human Resources Test

  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login succesfully

  Scenario: Human Resources  Attestations Functionality
    When Click on the element in LeftNav

    Then Subject Categories tab should be under Education > Setup tab

    And we should have search function for this page.


