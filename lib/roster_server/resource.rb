module RosterServer
  class Resource
    attr_reader :client

    def initialize(client)
      @client = client
    end

    def get_request(url, key, params, headers)
      response = client.connection.get(url, params, default_headers.merge(headers))
      response.body[key]
    end

    def get_limited_request(url, key, params, headers)
      # Roster Server restricts the limit to 10,000 records at a time
      data, limit, offset, count = [], 10000, 0, 0
      while count >= offset
        response = get_request(url, key, {**params, limit: limit, offset: offset}, {})
        data.concat(response)
        count = data.count
        offset = offset + limit
      end
      data
    end

    def default_headers
      {}
    end

    def handle_response(response)
      message = response.body['error']
      case response.status
      when 400
        raise Error, message
      when 401
        raise Error, message
      when 403
        raise Error, message
      when 404
        raise Error, message
      when 429
        raise Error, message
      when 500
        raise Error, message
      end
    end
  end
end
