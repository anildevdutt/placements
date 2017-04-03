class NotificationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_mailer.credentials.subject
  #
  def credentials(user)
    @greeting = "Hi"
    @student = user
    mail to: user.email, subject: 'T&P department student login credentials'

  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_mailer.selected.subject
  #
  def selected(user)
    @greeting = "Hi"
    mail to: user.email, subject: 'your selected'
  end
end
