config.logger = Logger.new(Rails.root.join("log",Rails.env + ".log"),3,20*1024*1024) # three 20 meg files