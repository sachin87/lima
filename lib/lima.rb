require "lima/version"

module Lima
  class Application
    def call(env)
    	[200, {'Content-Type' => 'text/html'}, ['Hello from Ruby on Lima!']]
    end	
  end	
end
