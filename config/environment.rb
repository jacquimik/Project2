# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Configuration for using SendGrid on Heroku
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
  address:              'smtp.sendgrid.com',
  port:                 587,
  domain:               'heroku.com' ,
  user_name:            ENV['SENDGRID_USERNAME'],
  password:             ENV['SENDGRID_PASSWORD'],
  authentication:       'plain',
  openssl_verify_mode: 'none',
  enable_starttls_auto: true  }



# # Configuration for using SendGrid on Heroku
# ActionMailer::Base.delivery_method = :smtp
# ActionMailer::Base.smtp_settings = {
#   :user_name => "yourSendGridusernameyougetfromheroku",
#   :password => "yourSendGridpasswordyougetfromheroku",
#   :domain => "staging.freelanceful.com",
#   :address => "smtp.sendgrid.net",
#   :port => 587,
#   :authentication => :plain,
#   :enable_starttls_auto => true
# }
