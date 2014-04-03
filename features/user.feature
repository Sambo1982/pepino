Feature: User
	As a user
	I want to have a user account
	In order to create and manage product features

Scenario: Successful User Creation
	Given I am on the new user page
	When I enter valid user data
	Then I should see My Dashboard page
	And I should see a success message
