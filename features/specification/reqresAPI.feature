
Feature: reqresAPI testing


Scenario: List a user by id with a GET request
When I send a GET request to list a user by id 
Then I should get the user information with success


Scenario: List a non existing user by id with a GET request
When I send a GET request to list a non existing user by id 
Then I should get the not found user messege code


Scenario: Create a new user with a POST request
When I send a Post request to create a new user
Then I should get created messege

@get1
Scenario: Update a user with a PUT request
When I send a Put request to update a user
Then I should get user message updated code

@get1
Scenario: Delete a user with a DELETE request
When I send a delete request to delete a user
Then I should get user deleted code



