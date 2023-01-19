# frozen_string_literal: true

require_relative "roster_server/version"

module RosterServer
  autoload :Client, "roster_server/client"
  autoload :Error, "roster_server/error"
  autoload :Object, "roster_server/object"
  autoload :Collection, "roster_server/collection"
  autoload :Resource, "roster_server/resource"
  autoload :User, "roster_server/user"

  # Objects
  autoload :Enrollment, "roster_server/objects/enrollment"
  autoload :User , "roster_server/objects/user"
  autoload :Course, "roster_server/objects/course"
  autoload :Klass, "roster_server/objects/klass"

  # Resources
  autoload :EnrollmentsResource, "roster_server/resources/enrollments"
  autoload :UsersResource, "roster_server/resources/users"
  autoload :KlassesResource, "roster_server/resources/klasses"
end
