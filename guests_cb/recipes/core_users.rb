
users_manage 'core-users' do
  group_id 990
  action [ :create ]
  data_bag 'core_users'
end

core_users = data_bag('core_users')

node.default['authorization']['sudo']['users'] += core_users
node.default['authorization']['sudo']['passwordless'] = true
