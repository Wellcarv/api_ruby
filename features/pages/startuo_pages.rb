class Startup

    include HTTParty
    require_relative '../hooks/startup_hook'
    base_uri "http://localhoste:3000"
    
    def initialize(body)
        @options = {:body => body}
    end

    def postStartup
        self.class.post("/startup", @options)
    end
end