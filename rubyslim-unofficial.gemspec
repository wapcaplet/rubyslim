
Gem::Specification.new do |s|
  s.name = "rubyslim-unofficial"
  s.version = "0.0.2"
  s.summary = "Ruby SliM protocol for FitNesse"
  s.description = <<-EOS
    RubySliM implements the SliM protocol for the FitNesse acceptance testing
    framework. This gem is an unofficial version created and distributed by
    Eric Pierce <wapcaplet88@gmail.com>, based on the original code by Robert
    C. Martin and Doug Bradbury.
  EOS
  s.authors = ["Robert C. Martin", "Doug Bradbury"]
  s.email = "unclebob@cleancoder.com"
  s.homepage = "http://github.com/wapcaplet/rubyslim"
  s.platform = Gem::Platform::RUBY

  s.add_development_dependency 'rspec', '~> 1.3.0'
  s.add_development_dependency 'rcov'

  s.files = `git ls-files`.split("\n")
  s.require_path = 'lib'

  s.executables = ['rubyslim']
end

