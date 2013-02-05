module Collector
  class Datadog
    attr_accessor :api_key
    attr_accessor :application_key

    def initialize (api_key, application_key)
      @api_key = api_key
      @application_key = application_key
      @dog_client = Dogapi::Client.new(api_key, application_key)
    end

    def send_point (name, value, tags)
      @dog_client.emit_point(name, value, tags)
    end

  end
end
