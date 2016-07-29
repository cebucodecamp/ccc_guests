RUBY_PACKAGES = [
  'ruby',
  'ruby-dev',
  'irb',
  'rake'
]

apt_package RUBY_PACKAGES do
  action :install
end
