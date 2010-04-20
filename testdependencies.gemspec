# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{testdependencies}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Matthias Hennemeyer"]
  s.date = %q{2010-04-20}
  s.description = %q{Add explicit dependencies to your Rails tests.}
  s.email = %q{mhennemeyer@me.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/adapters/plain.rb",
     "lib/adapters/shoulda.rb",
     "lib/testdependencies.rb",
     "test/helper.rb",
     "test/plain_test.rb",
     "test/shoulda_test.rb",
     "testdependencies.gemspec"
  ]
  s.homepage = %q{http://github.com/mhennemeyer/testdependencies}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Add explicit dependencies to your Rails tests.}
  s.test_files = [
    "test/helper.rb",
     "test/plain_test.rb",
     "test/shoulda_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    else
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    end
  else
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
  end
end

