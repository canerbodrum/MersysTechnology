Feature: Human Resources Test

  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login succesfully

  Scenario: Human Resources  Attestations Add Functionality
    When Click on the element in LeftNav
      | humanResources |
      | humanSetup     |
      | attestations   |
    Then  Click on the element in Dialog
      | addButton |
    And User sending the keys in Dialog Content
      | nameInput | berkay1 |
    And Click on the element in Dialog
      | saveButton |
    Then Success message should be displayed

  Scenario: Human Resources  Attestations  Negative Add Functionality
    When Click on the element in LeftNav
      | humanResources |
      | humanSetup     |
      | attestations   |
    Then  Click on the element in Dialog
      | addButton |
    And User sending the keys in Dialog Content
      | nameInput | berkay1 |
    And Click on the element in Dialog
      | saveButton |
    Then Negative message is displayed

  Scenario: Human Resources  Attestations  Edit Functionality
    When Click on the element in LeftNav
      | humanResources |
      | humanSetup     |
      | attestations   |
    And Click on the element in Dialog
      | attestationsName |
    And User sending the keys in Dialog Content
      | searchInput | berkay1 |
    And Click on the element in Dialog
      | searchButton     |
      | editAttestations |
    And User sending the keys in Dialog Content
      | nameInput | berkay2 |
    And Click on the element in Dialog
      | saveButton |
    And Success message should be displayed

  Scenario: Human Resources  Attestations Delete Functionality
    When Click on the element in LeftNav
      | humanResources |
      | humanSetup     |
      | attestations   |
    And Click on the element in Dialog
      | attestationsName |
    And User sending the keys in Dialog Content
      | searchInput | berkay2 |
    And Click on the element in Dialog
      | searchButton    |
      | deleteImageBtn  |
      | deleteDialogBtn |
    Then Success message should be displayed

  Scenario: Human Resources  Attestations Negative Delete Functionality
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