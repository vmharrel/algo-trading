template "/home/#{node[:custom][:bashrc][:user]}/.bashrc" do
  source "bashrc.erb"
  owner node[:custom][:bashrc][:user]
  group node[:custom][:bashrc][:user]
  variables({
    :paths => node[:custom][:bashrc][:paths],
    :envs => node[:custom][:bashrc][:envs]
  })
end