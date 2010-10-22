# -*- encoding: utf-8 -*-
 
Gem::Specification.new do |s|
  s.name        = "rack-escaped-fragment"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jesse Chan-Norris"]
  s.email       = ["jcn@indabamusic.com"]
  s.homepage    = "http://github.com/indabamusic/rack-escaped-fragment"
  s.summary     = "Rack middleware to handle Google's #! crawling"
  s.description = "Rack middleware to handle the _escaped_fragmet_ parameter that Google uses to crawl sites that do AJAX page loads"
 
  s.required_rubygems_version = ">= 1.3.5"
  s.rubyforge_project         = "rack-escaped-fragment"
 
  s.files        = Dir.glob("{lib}/**/*") + %w(README.md)
  s.require_path = "lib"
end

