if File.exists?("#{RAILS_ROOT}/config/scheduled_jobs.yml")
  require File.dirname(__FILE__) + "/lib/heroku_chronos"
end