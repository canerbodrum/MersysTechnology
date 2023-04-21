Feature: School Locations Tests

  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login succesfully

    Scenario: School Locations Functionality

      When Click on the element in LeftNav
      |setup|
      |schoolSetup|
      |locations|

      Then  Click on the element in Dialog
        | addButton |

      And User sending the keys in Dialog Content
        | nameInput | merrt |
        |shortName  |mrt   |
        |capacity   |23    |

      And Click on the element in Dialog
      |toggleBar|
      |toggleBar|
      | saveButton |

      Then Success message should be displayed
  Scenario: School Locations Negative Functionality

    When Click on the element in LeftNav
      |setup|
      |schoolSetup|
      |locations|

    Then  Click on the element in Dialog
      | addButton |

    And User sending the keys in Dialog Content
      | nameInput | merrt |
      |shortName  |mrt   |
      |capacity   |23    |

    And Click on the element in Dialog
      |toggleBar|
      |toggleBar|
      | saveButton |

    Then Already exist message should be displayed

  Scenario: School Locations Edit Functionality
    When Click on the element in LeftNav
      |setup|
      |schoolSetup|
      |locations|
    And Click on the element in Dialog
    |editButton|
    And User sending the keys in Dialog Content
      | nameInput | merrtt |
      |shortName  |mrt   |
      |capacity   |23    |

    And Click on the element in Dialog
      |toggleBar|
      |toggleBar|
      | saveButton |

    Then Success message should be displayed

  Scenario: School Locations Negative Edit Functionality
    When Click on the element in LeftNav
      |setup|
      |schoolSetup|
      |locations|
    And Click on the element in Dialog
      |editButton|
    And User sending the keys in Dialog Content
      | nameInput | merrtt |
      |shortName  |mrt   |
      |capacity   |231008899000000000000000000000000000000000000000000000000000000    |

    And Click on the element in Dialog
      |toggleBar|
      |toggleBar|
      | saveButton |

    Then error message should be displayed

  Scenario: School Locations Delete Functionality
    When Click on the element in LeftNav
      |setup|
      |schoolSetup|
      |locations|
    And Click on the element in Dialog
      |deleteImageBtn|
      |deleteDialogBtn|

    Then Success message should be displayed

















