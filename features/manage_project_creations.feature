Feature: Manage New Project Creation
  In order to get new projects
  I want to be able to create project


  Scenario: Register new Project
    Given I am on the new project_creation page
    And I fill in "project_project_title" with "ABZ"
    And I fill in "project_project_description" with "This is ABZ project"
    And I press "Create"
    Then 1 project should exist

