module RosterServer
  class Enrollment < Object
    def initialize(attributes)
      @data = wrap_in_ostruct(attributes)
    end
  end
end
