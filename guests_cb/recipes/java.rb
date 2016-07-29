JAVA_PACKAGES = [
  'oracle-java8-installer',
  'oracle-java8-set-default',
]

execute 'oracle-java8-accept-license' do
  command 'echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections'
end

apt_package JAVA_PACKAGES do
  action :install
end
