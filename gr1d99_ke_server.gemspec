require_relative 'lib/gr1d99_ke_server/version'

Gem::Specification.new do |spec|
  spec.name          = "gr1d99_ke_server"
  spec.version       = Gr1d99KeServer::VERSION
  spec.authors       = ["Gideon Kimutai"]
  spec.email         = ["gideon.kimutai.kim@gmail.com"]

  spec.summary       = %q{Simple gRPC implementation.}
  spec.description   = %q{gRPC implementation of services for gr1d99_ke.}
  spec.homepage      = "https://github.com/gr1d99-ke/gr1d99_ke_server"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  #spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/gr1d99-ke/gr1d99_ke_server"
  spec.metadata["changelog_uri"] = "https://github.com/gr1d99-ke/gr1d99_ke_server/blob/master/README.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
