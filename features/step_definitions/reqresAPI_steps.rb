When("I send a GET request to list a user by id") do    
    $response = @api.getRequestById(1)
    #@ = instance variable
    #$ = global variable
end
  
Then("I should get the user information with success") do
    expect($response.code).to eq(200)

    puts "Response Code: #{$response.code}"    
    puts "Id           : #{$response['data']['id']}"
    puts "Email        : #{$response['data']["email"]}"
    puts "Fist Name    : #{$response['data']["first_name"]}"
    puts "Last Name    : #{$response['data']["last_name"]}"
    puts "Avatar       : #{$response['data']["avatar"]}"

end

When("I send a GET request to list a non existing user by id") do
    $response = @api.getRequestById(23)        
        
end
  
Then("I should get the not found user messege code") do
    #expect to return not found
    expect($response.code).to eq(404)
    puts "Response Code: #{$response.code}" 
end


When("I send a Post request to create a new user") do
    $response = @api.postRequest
end
  
Then("I should get created messege") do
    expect($response.code).to eq(201)

    puts "Response Code: #{$response.code}"
    puts "Name         : #{$response['name']}"
    puts "Job          : #{$response['job']}"
    puts "Id           : #{$response['id']}"
    puts "Created at   : #{$response['createdAt']}"
end


When("I send a Put request to update a user") do
    $response = @api.putRequest(2)
end
  
Then("I should get user message updated code") do
    expect($response.code).to eq(200)

    puts "Response Code: #{$response.code}"
    puts "Name         : #{$response['name']}"
    puts "Job          : #{$response['job']}"
    puts "Updated At   : #{$response['updatedAt']}"
end 
  
When("I send a delete request to delete a user") do
    $response = @api.deleteRequest(2)
end
  
Then("I should get user deleted code") do
    expect($response.code).to eq(204)
    puts "Response Code: #{$response.code}"
end


