class UserMailer < ActionMailer::Base
  default from: "info@holidayreminder.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.reminder_notification.subject
  #
    def send_notification holiday
        @holiday = holiday
        @greeting = holiday.customer_name
        mail to: holiday.customer_email, subject: "Your holiday reminder!"
    end
end
