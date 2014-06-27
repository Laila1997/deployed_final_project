require 'bundler' #require bundler
Bundler.require #require everything in bundler in gemfile
require './lib/scraping'
require 'pry'


get '/' do
  #instance class from scraping.rb here
  @test = Tweet.new
  #index.html.erb won't have access to your objects without it.
  erb :index #this tells your program to use the html associated with the index.html.erb file in your browser
end 