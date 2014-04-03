Feature: User
	As a user
	I want to have a user account
	In order to create and manage product features

Scenario: Successful User Creation
	Given I am on the new user page
	When I enter valid user data
	Then I should see My Dashboard page
	And I should see a success message

Scenario: Failed user creation (no name)
	Given I am on the new user page
	When I do not add a name
	And I do add a valid email, password, confirm password
	And I do submit the form 
	Then I should be on the new user page
	And I should see a form error

Scenario: Failed user creation (no email)
	Given I am on the new user page
	When I do not add an email
	And I do add a valid name, password, confirm password
	And I do submit the form 
	Then I should be on the new user page
	And I should see a form error

Scenario: Failed user creation (invalid email)
	Given I am on the new user page
	When I do add an invalid email
	And I do add a valid name, password, confirm password
	And I do submit the form 
	Then I should be on the new user page
	And I should see a form error

Scenario: Failed user creation (invalid password)
	Given I am on the new user page
	When I do add a valid name, email
	And I do add an invalid password
	And I do submit the form 
	Then I should be on the new user page
	And I should see a form error

Scenario: Failed user creation (password does not match)
	Given I am on the new user page
	When I do add a valid name, email, and password
	And I do add an invalid confirm password
	And I do submit the form 
	Then I should be on the new user page
	And I should see a form error


Scenario: Successful signin
    Given a user visits the signin page
    And the user has an account
    When the user submits valid signin information
    Then he should see his profile page
    And he should see a signout link

Scenario: Unsuccessful signin
    Given a user visits the signin page
    When he submits invalid signin information
    Then he should see an error message

Scenario: Logging out
	Given I am logged in
	When I click log out
	Then I should be on the home page
	And I should see the link to sign in
	
