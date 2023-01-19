 module RosterServer
  class KlassesResource < Resource
    def all
      Collection.from_response(get_limited_request("classes", "classes", {},{}), type: Klass)
    end
  end
end
