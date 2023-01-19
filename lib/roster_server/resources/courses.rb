 module RosterServer
  class CoursesResource < Resource
    def all
      Collection.from_response(get_limited_request("courses", "courses", {},{}), type: Course)
    end
  end
end
