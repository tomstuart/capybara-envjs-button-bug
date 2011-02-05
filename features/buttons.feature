@javascript
Feature: Buttons
  Background:
    Given I am on the buttons show page

  Scenario: Press the 'Hello' button
    When I press "Hello"
    Then I should see "Hi!"

  Scenario: Press the 'Goodbye' button
    When I press "Goodbye"
    Then I should see "Bye!"
