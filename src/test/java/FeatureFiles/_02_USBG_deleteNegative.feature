Feature: Human Resources Test

  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login succesfully

  Scenario: Human Resources  Attestations Functionality
    When Click on the element in LeftNav
      | humanResources |
      | humanSetup     |
      | attestations   |

    And Click on the element in Dialog
      | attestationsName |

    And User sending the keys in Dialog Content
      | searchInput | berkay2 |

    And Click on the element in Dialog
      | searchButton |

    Then Negative delete message is displayed