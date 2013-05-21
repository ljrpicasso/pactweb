class NotificationMailer < ActionMailer::Base
  default from: "webmaster@pactwi.org", to: "john@johnribar.com"

  def notification_mailer(notification)
    @notification = notification
    @url = "http://pactwi.org"
    mail(:subject => "New Notification")
  end
end
