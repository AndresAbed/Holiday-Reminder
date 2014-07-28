class Holiday < ActiveRecord::Base
	belongs_to :user

  	def notify_customer
    	UserMailer.send_notification(self).deliver
  	end
end
