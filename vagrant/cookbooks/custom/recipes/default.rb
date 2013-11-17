# For some reason, a fresh copy of my VM has issues booting up until this runs
execute "initial-sudo-apt-get-update" do
  command "apt-get update"
end

# Install VIM because reasons.
package "vim"

# All servers can use curl
package "curl"

# Install unzip because you gotta change your pants at some point
package "unzip"