apt_repository "10gen" do
  uri "http://downloads-distro.mongodb.org/repo/ubuntu-upstart"
  distribution "dist"
  components ["10gen"]
  key "7F0CEB10"
  keyserver "keyserver.ubuntu.com"
  action :add
end

package "mongodb-10gen"