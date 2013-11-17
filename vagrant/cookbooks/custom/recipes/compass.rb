gem_package "compass" do
  action :install
  version node[:custom][:compass_version]
  provider Chef::Provider::Package::Rubygems
end