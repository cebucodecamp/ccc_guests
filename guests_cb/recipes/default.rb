#
# Cookbook Name:: guests_cb
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'guests_cb::apt'
include_recipe 'guests_cb::base_packages'
include_recipe 'guests_cb::core_users'
include_recipe 'sudo'

include_recipe 'guests_cb::ruby'
include_recipe 'guests_cb::java'
include_recipe 'guests_cb::nodejs'
include_recipe 'guests_cb::scala'
include_recipe 'guests_cb::python'

include_recipe 'guests_cb::devenv'
