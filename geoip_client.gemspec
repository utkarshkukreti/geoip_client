# -*- encoding: utf-8 -*-
require File.expand_path('../lib/geoip_client/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Utkarsh Kukreti"]
  gem.email         = ["utkarshkukreti@gmail.com"]
  gem.description   = %q{Client for `geoip-server` GeoIP Server.}
  gem.summary       = %q{Client for `geoip-server` GeoIP Server.}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "geoip_client"
  gem.require_paths = ["lib"]
  gem.version       = GeoIPClient::VERSION
end
