require 'json'

module RosterServer
  class Object
    attr_reader :data
    # Every time an Object is called where an attribute is missing (ie is still a Ruby hash and
    #   and hasn't been converted to an OpenStruct), then method_missing is called.
    #   method_missing takes the "method" that was being accessed, which is really in this case
    #   and attribute, then attempts to access the @attributes array with that attribute.
    #   If the result is a Hash, it returns an Object (ie an OpenStruct) else it returns the original
    #   attribute.

    def wrap_in_ostruct(data)
      JSON.parse(data.to_json, object_class: OpenStruct)
    end
  end
end
