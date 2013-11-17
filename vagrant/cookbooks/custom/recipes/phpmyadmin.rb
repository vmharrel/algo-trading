package "phpmyadmin"

template "/etc/phpmyadmin/config.inc.php" do
  source "phpmyadmin/config.inc.php.erb"
  owner "root"
  group "root"
  mode 444
end

link "/etc/apache2/sites-enabled/phpmyadmin.conf" do
  to "/etc/phpmyadmin/apache.conf"
  notifies :reload, resources(:service => "apache2"), :delayed
end
