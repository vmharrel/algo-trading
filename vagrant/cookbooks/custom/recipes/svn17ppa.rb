apt_repository "svn17" do
  uri "http://ppa.launchpad.net/svn/ppa/ubuntu"
  distribution node['lsb']['codename']
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "A2F4C039"
  action :add
end

package "subversion"
