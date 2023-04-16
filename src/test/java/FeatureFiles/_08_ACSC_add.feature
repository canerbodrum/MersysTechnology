Feature: Human Resources Test

  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login succesfully

  Scenario: Scholls  Position Catagories Add Functionality
    And Click on the element in LeftNav
      | humanResources |
      | setup          |
      | schollSetup    |
      | departments    |

    And Click on the element in Dialog
      | addButton |

    And User sending the keys in Dialog Content
      | nameInput | ahmet |
      | codeInput | 777   |
    And Click on the element in Dialog
      | saveButton |

    Then Success message should be displayed