Feature: Human Resources Test

  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login succesfully

  Scenario: Schools  Position Catagories Edit Functionality
    And Click on the element in LeftNav
      | humanResources |
      | setup          |
      | schollSetup    |
      | departments    |


    And User delete item from Dialog Content
      | korcan |

    Then Success message should be displayed