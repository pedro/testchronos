module Heroku
  class Chronos
    def self.schedule_jobs
      YAML.load_file("#{RAILS_ROOT}/config/scheduled_jobs.yml").each do |job, config|
        attrs = config.merge(:name => job)
        puts "scheduling job with attributes #{attrs.inspect}"
        RestClient::Resource.new('chronos.pedro.herokudev.com/jobs', HerokuApp.username, HerokuApp.password).post(attrs)
      end
    end
  end
end