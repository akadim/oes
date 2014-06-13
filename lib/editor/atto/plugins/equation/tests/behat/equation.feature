@editor @editor_atto @atto @atto_equation
Feature: Atto equation editor
  To teach maths to students, I need to write equations

  @javascript
  Scenario: Create an equation
    Given I log in as "admin"
    When I navigate to "Edit profile" node in "My profile settings"
    And I set the field "Description" to "<p>Equation test</p>"
    # Set field on the bottom of page, so equation editor dialogue is visible.
    And I expand all fieldsets
    And I set the field "Picture description" to "Test"
    And I select the text in the "Description" Atto editor
    And I click on "Show more buttons" "button"
    And I click on "Equation editor" "button"
    And I set the field "Edit equation using" to " = 1 \div 0"
    And I click on "\infty" "button"
    And I click on "Save equation" "button"
    And I click on "Update profile" "button"
    Then "\infty" "text" should exist

