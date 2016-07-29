REQUIRED_PACKAGES = [
  'software-properties-common',
  'apt-transport-https',
  'curl',
  'wget',
  'nfs-common'
]

BASE_PACKAGES = [
  'libssl-dev',
  'libtool',
  'libcurl4-openssl-dev',
  'libmysqlclient-dev',
  'libxml2-dev',
  'libxslt-dev'
]

UTILS_PACKAGES = [
  'ufw',
  'htop',
  'traceroute',
  'openvpn',
  'openssl',
  'ssl-cert',
  'tmux'
]

DEV_PACKAGES = [
  'git-core',
  'emacs-nox',
  'mg'
]

ALL_PACKAGES = REQUIRED_PACKAGES + BASE_PACKAGES + UTILS_PACKAGES + DEV_PACKAGES

apt_package ALL_PACKAGES do
  action :install
end

include_recipe 'build-essential::default'
