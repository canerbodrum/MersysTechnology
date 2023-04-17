Feature: Bank Accounts Test

  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login succesfully

  Scenario: Bank Accounts Add Functionality
    When Click on the element in LeftNav
      | setup        |
      | parameters   |
      | bankAccounts |
    Then  Click on the element in Dialog
      | addButton |
    And User sending the keys in Dialog Content
      | nameInput        | berkay1   |
      | iban             | 123456789 |
      | integrationCode2 | 123123    |
    And Click on the element in Dialog
      | currency      |
      | currencyMoney |
      | saveButton    |

    Then Success message should be displayed

  Scenario: Bank Accounts Negative Add Functionality
    When Click on the element in LeftNav
      | setup        |
      | parameters   |
      | bankAccounts |
    Then  Click on the element in Dialog
      | addButton |
    And User sending the keys in Dialog Content
      | nameInput        | berkay1   |
      | iban             | 123456789 |
      | integrationCode2 | 123123    |
    And Click on the element in Dialog
      | currency      |
      | currencyMoney |
      | saveButton    |

    Then Already exist message should be displayed

  Scenario: Bank Accounts Edit Functionality
    When Click on the element in LeftNav
      | setup        |
      | parameters   |
      | bankAccounts |
    And User sending the keys in Dialog Content
      | searchInput | berkay1 |
    Then  Click on the element in Dialog
      | searchButton |
      | editButton   |
    And User sending the keys in Dialog Content
      | nameInput        | berkay2   |
      | iban             | 123456789 |
      | integrationCode2 | 123123    |
    And Click on the element in Dialog
      | currency      |
      | currencyMoney |
      | saveButton    |

    Then Success message should be displayed

  Scenario: Bank Accounts Delete Functionality
    When Click on the element in LeftNav
      | setup        |
      | parameters   |
      | bankAccounts |
    And User delete item from Dialog Content
      | berkay2 |
    Then Success message should be displayed

  Scenario: Bank Accounts  Negative Delete Functionality
    When Click on the element in LeftNav
      | setup        |
      | parameters   |
      | bankAccounts |
    And User sending the keys in Dialog Content
      | searchInput | berkay2 |
    Then  Click on the element in Dialog
      | searchButton |
    Then No Data to Display
