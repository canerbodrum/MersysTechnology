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


    And Click on the element in Dialog
      | editSchool |

    And User sending the keys in Dialog Content

      | nameInput | korcan |
      | codeInput | 888    |

    And Click on the element in Dialog

      | saveButton |
    Then Success message should be displayed