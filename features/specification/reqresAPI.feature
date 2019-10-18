
Feature: reqresAPI testing


Scenario: List a user by id with a GET request
When I send a GET request to list a user by id 
Then I should get the user information with success


Scenario: List a non existing user by id with a GET request
When I send a GET request to list a non existing user by id 
Then I should get the not found user messege code

@get1
Scenario: Create a new user with a POST request
When I send a Post request to create a new user
Then I should get created messege

Scenario: Update a user with a PUT request

Scenario:Delete a user with a DELETE request
