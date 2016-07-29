apt_package [ 'nodejs', 'npm' ] do
  action :install
end

include_recipe 'nodejs'

nodejs_npm 'express'
nodejs_npm 'grunt'
