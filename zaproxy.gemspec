# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = 'zaproxy'
  spec.version = '0.0.3'
  spec.authors = ['hahwul']
  spec.email = ['hahwul@gmail.com']

  spec.summary = 'Ruby Gem for ZAP API'
  spec.description = 'A Ruby Implementation and Library for Easy Utilization of ZAP API'
  spec.homepage = 'https://github.com/hahwul/zaproxy-ruby'
  spec.required_ruby_version = '>= 2.7.0'
  spec.license = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/hahwul/zaproxy-ruby'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end

  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.metadata['rubygems_mfa_required'] = 'true'
end
