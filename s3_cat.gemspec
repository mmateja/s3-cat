# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 's3_cat/version'

Gem::Specification.new do |spec|
  spec.name          = 's3_cat'
  spec.version       = S3Cat::VERSION
  spec.author        = 'Marek Mateja'

  spec.summary       = 'Concatenate and print S3 files recursively'
  spec.description   = 'Command line utility for searching multiple S3 files'
  spec.homepage      = 'https://github.com/mmateja/s3-cat'
  spec.license       = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z s3_cat.gemspec bin/s3-cat lib/`.split("\x0")
  end
  spec.bindir        = 'bin'
  spec.executables   = %w[s3-cat]
  spec.require_paths = ['lib']

  spec.add_dependency 'aws-sdk-s3', '~> 1'

  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.84.0'
end
