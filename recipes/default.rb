#
# Cookbook Name:: tsuru-docker-node
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

newrelic_license = File::read("/tmp/newrelic_license_key")

apt_update 'Update the apt cache daily' do
  frequency 86_400
  action :periodic
end

newrelic_server_monitor 'Install' do
  license newrelic_license
end

# include_recipe 'tsuru-docker-node::docker'
