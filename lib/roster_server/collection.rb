module RosterServer
  class Collection
    attr_reader :list
    attr_accessor :count
    # call from_response(response, key: "enrollments", type: Enrollment)
    def self.from_response(list, type:)

      newCol = self.new(
       list: list.map{|attrs| type.new(attrs)}
      )
      newCol.count = newCol.list.count
      newCol
    end

    def initialize(list:)
      @list = list
      @count = 0
    end
  end
end
