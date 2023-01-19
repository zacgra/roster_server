# RosterServer

This is a simple API wrapper for retrieving data from Roster Server using OAuth.

Features:

- provides easy retrieval of all records from the `enrollments`, `courses`, `classes`, and `users` endpoints
- handles the 10,000 record request limit set by Roster Server
- transforms Ruby Hash responses in to nested OpenStructs, allowing for dot notation access of data

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add roster_server

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install roster_server

## Configuration

Export RS_CLIENT_ID, RS_CLIENT_SECRET, and RS_BASE_URL environment variables.

The base url should be similar to `https://<yoursubdomain>.rosterserver.com/ims/oneroster/v1p1/`.

## Getting Started

```rb
client = RosterServer::Client.new(client_id: ENV["RS_CLIENT_ID"], client_secret: ENV["RS_CLIENT_SECRET"])

# Enrollments
enrollments = client.enrollments.all

enrollments.list # returns an array of Enrollment objects, each with an OpenStruct of data
enrollments.list.first.data #returns the enrollment data under the first item in list
enrollments.list.first.data.role # => "student"
enrollments.list.first.data.user.sourcedId # => "12345", returns the nested user data id

# Users
users = client.users.all

# Klasses
klasses = client.klasses.all

# Courses
courses = client.courses.all
```

<!-- ## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org). -->

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/zacgra/roster_server.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
