Gem::Specification.new do |s|
  s.name               = "user-auth"
  s.version            = "0.0.1"
  s.default_executable = "user-auth"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dave Paola"]
  s.date = %q{2018-07-23}
  s.description = %q{A simple user authentication scaffold for Rails apps}
  s.email = %q{dpaola2@gmail.com}
  s.files = Dir['lib/*.rb']
  s.test_files = []
  s.homepage = ""
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{A simple user authentication scaffold for Rails apps}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end