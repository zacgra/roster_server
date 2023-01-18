# frozen_string_literal: true

require_relative "roster_server/version"

module RosterServer
  autoload :Client, "roster_server/client"
  autoload :Error, "roster_server/error"
  autoload :Object, "roster_server/object"
  autoload :Enrollment, "roster_server/objects/enrollment"

  autoload :Collection, "roster_server/collection"
end
