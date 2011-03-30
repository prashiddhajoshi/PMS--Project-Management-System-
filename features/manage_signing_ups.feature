Feature: Manage New User Signup
  In order to get new users
  As a new Users
  I want to be able to sign up

  Scenario: Register new User
    Given I am on the new signing_up page
    And I fill in "Email" with "prasidjoshi@gmail.com"
    And I fill in "Password" with "secret"
    And I fill in "Password confirmation" with "secret"
    And I press "Sign up"
    Then 1 user should exist

  @javascript
  Scenario: Loggin in a user
    Given a person exists with "prasidjoshi@gmail.com" and password "secret"
    Given I am on the login page
    And I fill in "Email" with "prasidjoshi@gmail.com"
    And I fill in "Password" with "secret"
    And I press "Sign in"
    Then I should see "Signed in successfully"