require 'faraday'
require 'faraday_middleware'
require 'oauth'
require 'simple_oauth'

module RosterServer
  class Client
    attr_reader :base_url, :client_id, :client_secret, :adapter

    def initialize(base_url:, client_id:, client_secret:, adapter: Faraday.default_adapter)
        @base_url = base_url
        @client_id = client_id
        @client_secret = client_secret
        @adapter = adapter
    end

    def connection
      @connectin ||= Faraday.new do |conn|
        conn.url_prefix = @base_url
        conn.request :oauth, consumer_key: @client_id, consumer_secret: @client_secret
        conn.request :json
        conn.response :json, content_type: "application/json"
        conn.adapter adapter
      end
    end

    def enrollments
      EnrollmentsResource.new(self)
    end

    def users
      UsersResource.new(self)
    end

    def courses
      CoursesResource.new(self)
    end

    def klasses
      KlassesResource.new(self)
    end
  end
end
