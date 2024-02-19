# frozen_string_literal: true

require 'rake'
require 'yaml'
require_relative 'lib/zaproxy'

desc 'Verify endpoints'
task :verify_endpoints do
  # Load the OpenAPI specification
  spec = YAML.load_file('./openapi.yaml')

  # Extract the endpoints from the specification
  spec['paths'].keys

  ZAPv2.new(endpoint: 'http://localhost:8090')

  # enum instances's sub classes
  ZAPv2.constants.each do |c|
    puts c unless %w[API API_KEY_DEFAULT].include? c.to_s
  end
end
