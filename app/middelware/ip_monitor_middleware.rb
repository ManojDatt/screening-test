module ActionDispatch
  class Request
    def ip
      @ip ||= super
    end

    def self.remote_ip(env)
      @env = env  
      @remote_ip ||= (@env["action_dispatch.remote_ip"] || ip).to_s
    end
  end
end

class IpMonitorMiddleware
    include ActionDispatch

	def initialize app
	    @app = app
	end

	def call env
    request_started_on = Time.now
    @status, @headers, @response = @app.call(env)
    request_ended_on = Time.now

    Rails.logger.debug "=" * 50
    Rails.logger.debug "Request delta time: #{request_ended_on - request_started_on} seconds."
    Rails.logger.debug "=" * 50
    Rails.logger.debug "#" * 50
    Rails.logger.debug "Request IP : #{Request.remote_ip(env)}" 
    Rails.logger.debug "Request User Country : #{Geocoder.search(Request.remote_ip(env)).first.country}"
    Rails.logger.debug "#" * 50

    [@status, @headers, @response]
  end
end


