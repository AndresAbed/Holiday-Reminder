require 'rufus-scheduler'

scheduler = Rufus::Scheduler.new

scheduler.every '1m' do
  Holiday.all.each do |holiday| 
  	holiday.notify_customer
  end
end