Before '@Startup' do

    @nome = Faker::Company.name
    

    @body = {
        "nome":@nome,        
    }
    @body =JSON.generate(body)

    @Startup =Startup.new(@body)
end