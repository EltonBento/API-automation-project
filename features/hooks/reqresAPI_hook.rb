Before do |scenario|
#in the example, befero is related with a tag
    @name = Faker::Name.name
    @job = Faker::Job.title
    
    @body ={
        "name": @name,
        "job": @job
    }

    #@body = JSON.parse(body)

    @api = ReqresAPI.new(@body)

end    