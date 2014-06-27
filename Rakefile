require 'nokogiri'
require 'open-uri'
require './lib/messaging.rb'
require './lib/scraping.rb'
require 'mailgun'
require 'pry'

task :check_tweet_time do
	@email= Email.new
	@tweet = Tweet.new
	time=Time.at(@tweet.tweet_time.to_i) 
	if Time.now - 10*60 <= time
		@email.send
	else 
		'nothing new'
	end
end
