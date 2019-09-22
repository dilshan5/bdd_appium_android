#Author: DilshanF
#Date Created: 22/09/2019

Feature:
  As a Mobile User, I want to be able to launch the app.

  Background:
    Given the user has opened the app and the app's Home screen is displayed

  Scenario: As a User, I should able to launch the Conact Manager application
    Then I can see "title"
    And I can see "showInvisible"

  Scenario: As a User, I should able to Add a contact
    And I can see "addContactButton"
    Then I click on Add to Contact Button
    Then I Should navigate to Add Contact Screen





