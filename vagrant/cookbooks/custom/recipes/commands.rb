node[:custom][:commands].each do |command_attributes|
  execute "#{command_attributes[:command]}" do
    if command_attributes[:creates]
      creates command_attributes[:creates]
    end
    if command_attributes[:cwd]
      creates command_attributes[:cwd]
    end
    if command_attributes[:environment]
      creates command_attributes[:environment]
    end
    if command_attributes[:group]
      creates command_attributes[:group]
    end
    if command_attributes[:path]
      creates command_attributes[:path]
    end
    if command_attributes[:returns]
      creates command_attributes[:returns]
    end
    if command_attributes[:timeout]
      creates command_attributes[:timeout]
    end
    if command_attributes[:user]
      creates command_attributes[:user]
    end
    if command_attributes[:umask]
      creates command_attributes[:umask]
    end
  end
end
