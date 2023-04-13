Feature:Test
  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login succesfully

    Scenario: As an Admin User I should be able to Add-Edit-Delete Fields under Parameters Setup

      When Click on the element in LeftNav
      |   setup     |
      |   parameters   |
      |   fields     |

      And Click on the element in Dialog
        | addButton |

      And User sending the keys in Dialog Content
      |   nameInput  | halil |