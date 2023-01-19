module RosterServer
  class UsersResource < Resource
    def all
      Collection.from_response(get_limited_request("users", "users", {}, {}), type: User)
    end
  end
end
