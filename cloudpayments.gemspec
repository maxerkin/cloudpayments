Gem::Specification.new do |s|
  s.name = "cloudpayments"
  s.version = "0.4.1"
  s.summary = "Сloudpayments API wrapper"
  s.authors = ["Alexey Spiridonov"]
  s.email = "alex9spiridonov@gmail.com"
  s.files = Dir["lib/**/*", "README.md"]
  s.homepage = "https://github.com/alex9spiridonov/cloudpayments"
  s.license = "MIT"
  s.add_runtime_dependency 'faraday', '< 3'
end
