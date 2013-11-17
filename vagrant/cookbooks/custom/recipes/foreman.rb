gem_package "foreman" do
  action :install
  version node[:custom][:foreman_version]
  provider Chef::Provider::Package::Rubygems
end