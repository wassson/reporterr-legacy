# frozen_string_literal: true

require_relative 'lib/reporterr/version'

Gem::Specification.new do |spec|
  spec.name = 'reporterr'
  spec.version = ReportErr::VERSION
  spec.authors = ['Austin Wasson']
  spec.email = ['austinpwasson@gmail.com']

  spec.summary = 'Catch, capture, and view errors all from within your Rails app.'
  spec.homepage = 'https://github.com/wassson/reporterr.git'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.7.5'

  spec.metadata['source_code_uri'] = 'https://github.com/wassson/reporterr.git'
  spec.metadata['changelog_uri'] = 'https://github.com/wassson/reporterr/blob/main/CHANGELOG.md'

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rails', '>= 7.0'
end
