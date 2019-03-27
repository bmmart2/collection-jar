    ActionMailer::Base.smtp_settings = {
    :user_name => $smtp_username,
    :password => $smtp_password,
    :domain => 'bmmart2.com',
    :address => 'smtp.sendgrid.net',
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
}
