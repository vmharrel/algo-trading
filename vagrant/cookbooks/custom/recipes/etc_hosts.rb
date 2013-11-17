template "/etc/hosts" do
  source "etc_hosts.erb"
  owner "root"
  group "root"
  mode 00644
  variables({
    :hosts => node[:custom][:etc_hosts]
  })
end
