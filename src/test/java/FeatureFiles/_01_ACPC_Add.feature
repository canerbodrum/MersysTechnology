Feature: Human Resources Test

  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login succesfully

  Scenario: Human Resources  Position Catagories Add Functionality
    When Click on the element in LeftNav
      | humanResources     |
      | humanSetup         |
      | positioncatagories |

    Then  Click on the element in Dialog
      | addButton |

    And User sending the keys in Dialog Content
      | nameInput | ahmet |

    And Click on the element in Dialog
      | saveButton |

    Then Success message should be displayed