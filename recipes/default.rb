#
# Cookbook Name:: Java Cryptography Extension
# Recipe:: default
#

dir = "#{node['java']['java_home']}/lib/security"

directory dir do
  owner "root"
  mode "0755"
  action :create
end

remote_file "#{dir}/local_policy.jar" do
  source "https://www.dropbox.com/s/u34fzwrw2x1dsek/local_policy.jar"
  mode "0644"
end

remote_file "#{dir}/US_export_policy.jar" do
  source "https://www.dropbox.com/s/u34fzwrw2x1dsek/local_policy.jar"
  mode "0644"
end