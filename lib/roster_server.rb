# frozen_string_literal: true

require_relative "roster_server/version"

module RosterServer
  autoload :Client, "roster_server/client"
  autoload :Error, "roster_server/error"

  class Error < StandardError; end
end
