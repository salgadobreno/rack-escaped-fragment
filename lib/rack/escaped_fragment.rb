require "rack"
require "uri"

module Rack
  class EscapedFragment
    def initialize(app)
      @app = app
    end
    
    def call(env)
      req = ::Rack::Request.new(env)
      
      if fragment = req.params["_escaped_fragment_"]
        original_fullpath = req.fullpath
        
        uri = URI.parse(fragment)
        env["PATH_INFO"]    = uri.path
        env["QUERY_STRING"] = uri.query || ""
        env["REQUEST_URI"]  = req.fullpath
        
        logger.info "Rack::EscapedFragment #{original_fullpath} => #{req.fullpath}"
      end
      
      @app.call(env)
    end
    
    private
    
    def logger
      ::Rails.logger || Logger.new(STDOUT) #TODO: make it Rails agnostic or something?
    end
    
  end
end
