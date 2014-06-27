require './app'
run Sinatra::Application

Mail.defaults do
  delivery_method :smtp, {
    :address => 'smtp.sendgrid.net',
    :port => 587,
    :domain => localhost:9393,
    :user_name => postmaster@sandbox63884a781a1f444abd210610b901bd2a.mailgun.org,
    :password => fifteen15,
    :authentication => 'plain',
    :enable_starttls_auto => true
  }
end