Gem::Specification.new do |spec|
  spec.name = "have_query_count"
  spec.version = "0.1.0"
  spec.summary = "rspec query count matcher"
  spec.description = "how many queries did you run? this will tell u"
  spec.authors = Array("Violet Graves")
  spec.homepage = "https://rubygems.org/gems/have_query_count"
  spec.license = "MIT"

  spec.add_dependency "rspec"
  spec.add_dependency "activerecord"
  spec.add_dependency "activesupport"

  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "pry"
  spec.metadata = Hash["rubygems_mfa_required", "true"]
end