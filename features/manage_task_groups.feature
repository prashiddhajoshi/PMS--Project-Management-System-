Feature: Manage task_groups
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new task_groups
    Given I am on the new task_groups page
    And I press "Create"

  Scenario: Delete task_groups
    Given the following task_groups:
      ||
      ||
      ||
      ||
      ||
    When I delete the 3rd task_groups
    Then I should see the following task_groups:
      ||
      ||
      ||
      ||
