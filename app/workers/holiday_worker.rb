class HolidayWorker
  include Sidekiq::Worker
  
  def perform
    Holiday.all.each do |holiday| 
  		holiday.notify_customer
  	end
     HolidayWorker.perform_in(1.minutes)
  end
  
end