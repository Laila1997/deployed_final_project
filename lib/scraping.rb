require 'nokogiri'
require 'open-uri'
require 'pry'

class Tweet
	def initialize
		jff_html = open('https://twitter.com/JaneJfried')
		@jff_words = Nokogiri::HTML(jff_html)
		@tweet_words = self.scrape_tweet_words
		@tweet_time = self.scrape_tweet_time
	end

	def scrape_tweet_words
		tweet = @jff_words.css("div.ProfileTweet-contents p.ProfileTweet-text").first.text
	end

	def scrape_tweet_time
		time = @jff_words.css(".js-short-timestamp").first.attributes["data-time"].value
	end

	def tweet_words
		@tweet_words
	end

	def tweet_time
		@tweet_time
	end
end

