
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "nk_maple_syrup/version"

Gem::Specification.new do |spec|
  spec.name          = "nk_maple_syrup"
  spec.version       = NkMapleSyrup::VERSION
  spec.authors       = ["nathanknautz"]
  spec.email         = ["nate.knautz@gmail.com"]

  spec.summary       = "its a gem for when you eat pancakes"
  spec.description   = "you put this on top of the pancakes so that it makes them tasty, but really it just says 'ooooo' so thats cool too."
  spec.homepage      = "https://www.github.com/nathanknautz/nk_maple_syrup"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "unirest", "~> 1.1.2"
end
