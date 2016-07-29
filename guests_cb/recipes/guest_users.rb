
users_manage 'guest-users' do
  group_id 991
  action [ :create ]
  data_bag 'guest_users'
end
