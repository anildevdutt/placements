require 'test_helper'

class NotificationMailerTest < ActionMailer::TestCase
  test "credentials" do
    mail = NotificationMailer.credentials
    assert_equal "Credentials", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "selected" do
    mail = NotificationMailer.selected
    assert_equal "Selected", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
