node[:custom][:mysql][:databases].each do |database|
  # Create database
  execute "add-mysql-db-#{database}" do
    command "/usr/bin/mysql -u root -p#{node[:mysql][:server_root_password]} -e \"" +
        "CREATE DATABASE #{database};\" " +
        "mysql"
    action :run
    ignore_failure true
  end
end

node[:custom][:mysql][:users].each do |user|
  # Create user
  execute "add-mysql-user-#{user[:username]}" do
    command "/usr/bin/mysql -u root -p#{node[:mysql][:server_root_password]} -D mysql -r -B -N -e \"CREATE USER #{user[:username]}\""
    action :run
    ignore_failure true
  end

  execute "grant-mysql-perms-#{user[:username]}" do
    command "/usr/bin/mysql -u root -p#{node[:mysql][:server_root_password]} -D mysql -r -B -N -e \"GRANT ALL on *.* to #{user[:username]}\""
    action :run
    ignore_failure true
  end
end
