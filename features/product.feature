Feature: Manage Products
  In order to create and organize features and scenarios
  As a product manager
  I want to create and manage products

	Scenario: Products List
    	Given I have products titled Platform, Gateway
    	When I go to the list of products
    	Then I should see "Platform"
    	And I should see "Gateway"

	Scenario: Create Valid Product
  		Given I have no products
  		And I am on the list of products
  		When I follow New Product
  		And I fill in "Name" with "Platform"
  		And I fill in "Description" with "Our core platform product!"
  		And I press "Create"
  		Then I should see "New product created."
  		And I should see "Platform"
  		And I should see "Our core platform product!"
