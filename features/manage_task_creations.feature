Feature: Manage new Task creations
In order to get new Task
for an existing project task group
I want to be able to create task

  @javascript
  Scenario: Register new Task
    Given I am authenticated
    Given a task_group exists
    Given I am on the task_group page
    And I follow "Add a Task"
    Then sleep for 2 seconds
    And I am on the new task_creation page
    Then sleep for 2 seconds
    And I fill in "task_title" with "Design Logo"
    And I fill in "task_description" with "This is for designing a logo"
    Then sleep for 2 seconds
    And I press "Create Task"
    Then sleep for 2 seconds
    # Then 1 task should exist
    Then I should see "New Task Added to the Group Successfully !!"
    Then sleep for 2 seconds
