# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Depot::Application.initialize!

# ActionMailer configuration
Depot::Application.configure do
# COMMENT THIS OUT TO ENABLE EMAIL
  config.action_mailer.delivery_method = :test

# UNCOMMENT THIS AND FILL IT OUT ENABLE EMAIL
# config.action_mailer.delivery_method = :smtp
#  config.action_mailer.smtp_settings = {
#    :address              => "smtp.gmail.com",
#    :port                 => 587,
#    :domain               => "domain.of.sender.net",
#    :authentication       => "plain",
#    :user_name            => "username_goes_here_without_domain",
#    :password             => "password goes here",
#    :enable_starttls_auto => true
#  
#  }
end
