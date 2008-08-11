require "#{RAILS_ROOT}/config/environment"

desc 'to be ran by chronos'
task :chronos do
  User.find_or_create_by_name('1min').update_attribute(:update_by_chronos_at, Time.now)
end