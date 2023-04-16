Feature: Human Resources Test

  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login succesfully

  Scenario: Human Resources  PositionCatagories Delete Functionality

    When Click on the element in LeftNav
      | humanResources     |
      | humanSetup         |
      | positioncatagories |

    And User sending the keys in Dialog Content
      | searchInput | korcan |

    And User delete item from Dialog Content
      | korcan |

    Then Success message should be displayed
