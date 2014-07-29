class Holiday < ActiveRecord::Base
	belongs_to :user

	def is_time?
    	self.date - 14.days == Date.today
  	end

  	def notify_customer
    	UserMailer.send_notification(self).deliver if is_time?
  	end
end
