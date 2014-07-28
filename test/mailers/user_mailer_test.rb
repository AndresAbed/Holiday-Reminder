require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "reminder_notification" do
    mail = UserMailer.reminder_notification
    assert_equal "Reminder notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
