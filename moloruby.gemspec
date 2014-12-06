Gem::Specification.new do |s|
  s.name        = 'moloruby'
  s.version     = '1.0.0'
  s.date        = '2014-12-06'
  s.summary     = "A funny way to get sample text for your development sites!"
  s.description = "moloflollo.com is a random words generator. If you need to put some sample text in your site, moloruby is a gem which make funnier way instead of the boring 'Lorem Ipsum dolor sit amet'-thing using that sevice :3"
  s.authors     = ["Juanma Cabello"]
  s.email       = 'kerunaru@gmail.com'
  s.files       = ["lib/moloruby.rb"]
  s.homepage    = 'http://github.com/kerunaru/moloruby'
  s.license     = ['Ruby']
  s.required_ruby_version = '>= 2.0.0'
  s.rubygems_version = "2.2.2"
  s.add_dependency(%q<json>, ["~> 1.8.1"])
end
