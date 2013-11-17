node[:kixeye][:crons].each do |cron_attributes|
  cron "#{cron_attributes[:name]}" do
    if cron_attributes[:minute]
      minute cron_attributes[:minute]
    end
    if cron_attributes[:hour]
      hour cron_attributes[:hour]
    end
    if cron_attributes[:day]
      day cron_attributes[:day]
    end
    if cron_attributes[:month]
      month cron_attributes[:month]
    end
    if cron_attributes[:weekday]
      weekday cron_attributes[:weekday]
    end
    if cron_attributes[:command]
      command cron_attributes[:command]
    end
    if cron_attributes[:user]
      user cron_attributes[:user]
    end
    if cron_attributes[:mailto]
      mailto cron_attributes[:mailto]
    end
    if cron_attributes[:path]
      path cron_attributes[:path]
    end
    if cron_attributes[:home]
      home cron_attributes[:home]
    end
    if cron_attributes[:shell]
      shell cron_attributes[:shell]
    end
  end
end
