# frozen_string_literal: true

require_relative "lib/roster_server/version"

Gem::Specification.new do |spec|
  spec.name = "roster_server"
  spec.version = RosterServer::VERSION
  spec.authors = ["Zach Grammon"]
  spec.email = ["zachgrammon@gmail.com"]

  spec.summary = "An API wrapper for Classlink's RosterServer."
  spec.description = "An API wrapper for Classlink's RosterServer."
  spec.homepage = "https://github.com/zacgra/roster_server"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/zacgra/roster_server"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html

  spec.add_dependency "faraday", "~> 1.7"
  spec.add_dependency "faraday_middleware", "~> 1.1"
  spec.add_dependency "oauth"
  spec.add_dependency "simple_oauth"
end
