class UserMailer < ActionMailer::Base
  default from: "info@holidayreminder.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.reminder_notification.subject
  #
  def reminder_notification(holiday)
    @holiday = holiday
    mail(:to => holiday.customer_email, :subject => "Your holiday reminder!")
    UserMailer.reminder_notification(@holiday).deliver
  end
end
