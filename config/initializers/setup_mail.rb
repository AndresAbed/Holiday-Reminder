ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
	:address		=> 'smtp.sendgrid.net',
	:port			=> '587',
	:authentication => :plain,
	:user_name		=> 'app28051528@heroku.com',
	:password		=> 'ypw1wi1c',
	:domain			=> 'heroku.com',
	:enable_starttls_auto => true
}