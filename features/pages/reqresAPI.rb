class ReqresAPI
    include HTTParty
    require_relative '../hooks/reqresAPI_hook.rb'
    base_uri 'https://reqres.in/api'

    def initialize(body)
        @options = {:body => body}        
    end

    #list user
    def getRequestById(id)
        self.class.get("/users/#{id}")
    end
    
    #creating user
    def postRequest
        self.class.post("/users", @options)
    end

    def deleteRequest(id)
        self.class.delete("/users/#{id}")
    end    

    def putRequest(id)
        self.class.put("/users/#{id}", @options)
    end    
end