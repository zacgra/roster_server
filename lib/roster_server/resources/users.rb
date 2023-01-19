module RosterServer
  class UsersResource < Resource
    # def initialize
    #   @last_updated = "2022-08-23T17:37:51.000Z"
    # end
    def all
      Collection.from_response(get_limited_request("users", "users", {}, {}), type: User)
    end
  end
end
