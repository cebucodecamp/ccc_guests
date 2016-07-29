apt_repository 'docker' do
  uri 'http://get.docker.io/ubuntu'
  distribution 'docker'
  components [ 'main' ]
  key 'https://get.docker.io/gpg'
end

apt_repository 'java' do
  uri 'ppa:webupd8team/java'
  distribution 'xenial'
end

include_recipe 'apt::default'
