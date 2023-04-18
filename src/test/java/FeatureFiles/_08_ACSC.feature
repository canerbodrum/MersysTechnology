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

  Scenario: Schools  Position Catagories Edit Functionality
    And Click on the element in LeftNav
      | humanResources |
      | setup          |
      | schollSetup    |
      | departments    |
    And User delete item from Dialog Content
      | delete1 |

    Then Success message should be displayed