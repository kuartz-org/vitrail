require_relative "lib/vitrail/version"

Gem::Specification.new do |spec|
  spec.name        = "vitrail"
  spec.version     = Vitrail::VERSION
  spec.authors     = ["Guillaume CABANEL"]
  spec.email       = ["guillaume@kuartz.fr"]
  spec.homepage    = "https://github.com/kuartz-org/vitrail"
  spec.summary     = "Kuartz design system"
  spec.description = "Kuartz design system view components"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/kuartz-org/vitrail"
  spec.metadata["changelog_uri"] = "https://github.com/kuartz-org/vitrail/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.2"
  spec.add_dependency "view_component", ">= 3.7"
  spec.add_dependency "tailwindcss-rails"

  spec.add_development_dependency "lookbook", ">= 2.1.1"
end
