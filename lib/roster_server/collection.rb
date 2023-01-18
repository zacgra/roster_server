module RosterServer
  class Collection
    attr_reader :data
    # call from_response(response, key: "enrollments", type: Enrollment)
    def self.from_response(response, key:, type:)
      body = response.body
      self.new(
        data: body[key].map{|attrs| type.new(attrs)}
      )
    end

    def initialize(data:)
      @data = data
    end
  end
end
