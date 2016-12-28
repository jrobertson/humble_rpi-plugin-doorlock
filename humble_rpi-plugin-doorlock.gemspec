Gem::Specification.new do |s|
  s.name = 'humble_rpi-plugin-doorlock'
  s.version = '0.2.1'
  s.summary = 'Lock or unlock a door using this plugin with the HumbleRPi gem'
  s.authors = ['James Robertson']
  s.files = Dir['lib/humble_rpi-plugin-doorlock.rb']
  s.add_runtime_dependency('rpi', '~> 0.4', '>=0.4.2')
  s.signing_key = '../privatekeys/humble_rpi-plugin-doorlock.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/humble_rpi-plugin-doorlock'
end
