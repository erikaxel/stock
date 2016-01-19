$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'stock/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'stock'
  s.version     = Stock::VERSION
  s.authors     = ['Erik Axel Nielsen']
  s.email       = ['erikaxel.nielsen@gmail.com']
  s.homepage    = 'https://github.com/erikaxel/stock/tree/master'
  s.summary     = 'Small example of using Trailblazer in a Rails engine'
  s.description = 'Small example of using Trailblazer in a Rails engine.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'rails', '~> 4.2.5'
  s.add_dependency 'trailblazer'
  s.add_dependency 'trailblazer-rails'
  s.add_dependency 'cells'
  s.add_dependency 'rubocop'

  s.add_development_dependency 'sqlite3'
end
