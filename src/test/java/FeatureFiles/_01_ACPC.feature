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
  Scenario: Human Resources  Position Catagories Negative Add Functionality
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

    Then Negative message is displayed

  Scenario: Human Resources  PositionCatagories Edit Functionality
    When Click on the element in LeftNav
      | humanResources     |
      | humanSetup         |
      | positioncatagories |

    And User sending the keys in Dialog Content
      | searchInput | ahmet |

    And Click on the element in Dialog
      | searchButton           |
      | editPositionCatagories |

    And User sending the keys in Dialog Content
      | nameInput | korcan |
    And Click on the element in Dialog
      | saveButton |
    Then Success message should be displayed

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