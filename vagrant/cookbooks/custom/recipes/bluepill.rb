gem_package "bluepill" do
  action :install
  version node[:custom][:bluepill_version]
  provider Chef::Provider::Package::Rubygems
end