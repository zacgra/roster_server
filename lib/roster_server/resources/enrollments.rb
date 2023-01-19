 module RosterServer
  class EnrollmentsResource < Resource
    def all
      Collection.from_response(get_limited_request("enrollments", "enrollments", {},{}), type: Enrollment)
    end
  end
end
