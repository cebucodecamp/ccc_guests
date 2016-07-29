SCALA_PACKAGES = [
  'scala'
]

apt_package SCALA_PACKAGES do
  action :install
end

include_recipe 'simple-scala-sbt'
