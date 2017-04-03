# Preview all emails at http://localhost:3000/rails/mailers/notification_mailer
class NotificationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notification_mailer/credentials
  def credentials
    NotificationMailer.credentials
  end

  # Preview this email at http://localhost:3000/rails/mailers/notification_mailer/selected
  def selected
    NotificationMailer.selected
  end

end
