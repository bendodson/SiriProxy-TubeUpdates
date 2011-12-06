# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "siriproxy-tubeupdates"
  s.version     = "0.0.1" 
  s.authors     = ["bendodson"]
  s.email       = ["ben@bendodson.com"]
  s.homepage    = ""
  s.summary     = %q{Tube Updates Plugin}
  s.description = %q{Connects to the TubeUpdates.com API to get latest tube information}

  s.rubyforge_project = "siriproxy-tubeupdates"

  s.files         = `git ls-files 2> /dev/null`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/* 2> /dev/null`.split("\n")
  s.executables   = `git ls-files -- bin/* 2> /dev/null`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
