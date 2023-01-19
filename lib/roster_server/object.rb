require 'json'

module RosterServer
  class Object
    attr_reader :data

    def wrap_in_ostruct(data)
      JSON.parse(data.to_json, object_class: OpenStruct)
    end
  end
end
