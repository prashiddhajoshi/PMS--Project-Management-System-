Feature: Manage New Project Creation
  In order to get new projects
  I want to be able to create project


  @javascript
  Scenario: Register new Project
    # Given I am authenticated
    Given I am on the new project_creation page
    Then I sleep for 4 seconds
    And I fill in "project_project_title" with "ABZ"
    And I fill in "project_project_description" with "This is ABZ project"
    And I press "Create"
    Then 1 project should exist

