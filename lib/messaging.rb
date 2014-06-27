require 'mailgun'
class Email

	Mailgun.configure do |config|
 	config.api_key = ENV[MAILGUN_API_KEY]
  	config.domain  = ENV[MAILGUN_DOMAIN]
	end

	def send 
		@tweet = Tweet.new 
		@mailgun = Mailgun(:api_key => 'key-2md2c5zr02jmtrjdfbutlxhlx9g6f909')

		parameters = {
	  		:to => ENV[EMAIL],
	  		:subject => "Jane Tweets",
	  		:text => "#{@tweet.tweet_words}",
	 		:from => "postmaster@sandbox63884a781a1f444abd210610b901bd2a.mailgun.org"
		}
		
		@mailgun.messages.send_email(parameters)
	end
end