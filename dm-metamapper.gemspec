# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dm-metamapper}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jonah Honeyman", "Omer Tamuz"]
  s.date = %q{2010-06-08}
  s.description = %q{C++ API for databases created with DM. Hard typing, compile time checked queries.}
  s.email = %q{jonah@honeyman.org}
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".gitignore",
     "Gemfile",
     "README.md",
     "VERSION",
     "example/.gitignore",
     "example/Makefile",
     "example/example.cpp",
     "example/example.rb",
     "lib/dm-metamapper.rb",
     "lib/dm-metamapper/extension.rb",
     "lib/dm-metamapper/generator.rb",
     "lib/dm-metamapper/metamapper.rb",
     "lib/dm-metamapper/property.rb",
     "lib/templates/cpp/class.hpp.erb",
     "lib/templates/cpp/dmmm_comparators.hpp.erb",
     "lib/templates/cpp/dmmm_dbface.cpp.erb",
     "lib/templates/cpp/dmmm_dbface.h.erb",
     "lib/templates/cpp/dmmm_fields.hpp.erb",
     "lib/templates/cpp/dmmm_id.hpp.erb",
     "lib/templates/cpp/dmmm_identifiers.hpp.erb",
     "lib/templates/cpp/dmmm_utils.cpp.erb",
     "lib/templates/cpp/dmmm_utils.hpp.erb",
     "lib/templates/cpp/instance.hpp.erb",
     "output/.gitignore",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/jonuts/dm-metamapper}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Code generating C++ ORM}
  s.test_files = [
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

