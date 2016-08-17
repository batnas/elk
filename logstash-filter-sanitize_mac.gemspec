Gem::Specification.new do |s|

  s.name            = 'logstash-filter-sanitize_mac'
  s.version         = '1.0.0'
  s.licenses        = ['Apache License (2.0)']
  s.summary         = "Sanitizes MACs."
  s.description     = "This gem Sanitizes MACs"
  s.authors         = ["mcnewton", "batnas"]
  s.email           = 'N/A'
  s.homepage        = "https://github.com/batnas/elk"
  s.require_paths   = ["lib"]

  # Files
  s.files = Dir['lib/**/*','*.gemspec','Gemfile']

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "filter" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", "~> 1.0"
  s.add_runtime_dependency 'nokogiri'

  s.add_development_dependency 'logstash-devutils'
end

