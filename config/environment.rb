require 'rake'
require 'active_record'
require_all './app'


require 'bundler/setup'
Bundler.require


# put the code to connect to the database here
ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/twitter.sqlite"
)

require_relative "app/models/author.rb"
require_relative "app/models/subject.rb"
require_relative "app/models/tweet.rb"
