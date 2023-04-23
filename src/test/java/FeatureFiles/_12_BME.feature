Feature: Discounts Tests

  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login succesfully

  Scenario: Discounts Functionality

    When Click on the element in LeftNav
      |setup|
    |parameters|
    |discounts |

    Then  Click on the element in Dialog
      | addButton |

    And User sending the keys in Dialog Content
      |description|mert|
    |codeInput  |mrt23|
    |priorityCode|2323|

    And Click on the element in Dialog
      |toggleBar|
      |toggleBar|
      | saveButton |

    Then Success message should be displayed


  Scenario: Discounts Negative  Functionality

    When Click on the element in LeftNav
      |setup|
      |parameters|
      |discounts |

    Then  Click on the element in Dialog
      | addButton |

    And User sending the keys in Dialog Content
      |description|mert|
      |codeInput  |mrt23|
      |priorityCode|2323|

    And Click on the element in Dialog
      |toggleBar|
      |toggleBar|
      | saveButton |

    Then Already exist message should be displayed

  Scenario: Discounts Edit  Functionality

    When Click on the element in LeftNav
      |setup|
      |parameters|
      |discounts |

    And Click on the element in Dialog
      |editButton|

    And User sending the keys in Dialog Content
      |description|merttt|
      |codeInput  |mrt23|
      |priorityCode|2323|

    And Click on the element in Dialog
      |toggleBar|
      |toggleBar|
      | saveButton |

    Then Success message should be displayed

  Scenario: Discounts Edit Negative  Functionality

    When Click on the element in LeftNav
      |setup|
      |parameters|
      |discounts |

    And Click on the element in Dialog
      |editButton|

    And User sending the keys in Dialog Content
      |description|merttt|
      |codeInput  |mrt23|
      |priorityCode|2323000000000|

    And Click on the element in Dialog
      |toggleBar|
      |toggleBar|
      | saveButton |

    Then error message should be displayed

  Scenario: Discounts Delete  Functionality

    When Click on the element in LeftNav
      |setup|
      |parameters|
      |discounts |

    And Click on the element in Dialog
      |deleteImageBtn|
      |deleteDialogBtn|

    Then Success message should be displayed


