require 'bundler/setup'
Bundler.require

require 'rake'
require 'active_record'
# require 'require_all'
require_all 'app'



ActiveRecord::Base.establish_connection(
    :adapter => 'sqlite3',
    :database => 'db/twitter.sqlite'
)

