lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gmail/version'

Gem::Specification.new do |s|
  s.name = 'google-gmail-api'
  s.summary = 'A Ruby interface to Gmail API (NO IMAP, NO SMTP), with all the tools you will need.'
  s.description = "A Ruby interface to Gmail API (NO IMAP, NO SMTP).
  Search, read and send multipart emails; archive, mark as read/unread,
  delete emails; and manage labels. Everything is done through the Gmail API without going through IMAP or SMTP Protocol
  "
  s.version = Gmail::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ['Julien Hobeika', 'Keiran Betteley', 'Evaldas Grudzinskas']
  s.homepage = 'https://github.com/evaldasg/google-gmail-api'
  s.license = 'MIT'

  # runtime dependencies
  s.required_ruby_version = '>= 2.1.0'
  s.add_dependency 'activesupport'
  s.add_dependency 'google-api-client', '0.8.6'
  s.add_dependency 'hashie', '>=3.3.2'
  s.add_dependency 'hooks', '>=0.4.0'
  s.add_dependency 'mail', '>= 2.2.1'
  s.add_dependency 'mime', '>= 0.1'
  s.add_dependency 'stringex'

  # development dependencies
  s.add_development_dependency('mocha', '~> 1.0.0')
  s.add_development_dependency('shoulda', '~> 3.5.0')
  s.add_development_dependency 'test-unit'

  s.add_development_dependency 'gem-release'

  s.add_development_dependency 'bundler', '~> 1.16'
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'rspec', '~> 3.0'

  s.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\x0")
  s.executables   = `git ls-files -- bin/*`.split("\x0").map { |f| File.basename(f) }
  s.require_paths = ['lib']
end
