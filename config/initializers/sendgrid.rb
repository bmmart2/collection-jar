#config/initializers/sendgrid.rb

Sendgrid.smtp_username = ENV["sendgrid_smtp_username"]
Sendgrid.smtp_password = ENV["sendgrid_smtp_username"]
Sendgrid.smtp_port = ENV["sendgrid_smtp_port"]
