require 'rake'
require 'active_record'
require 'require_all'
require_all 'app'

require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection(
    :adapter => 'sqlite3',
    :database => 'db/twitter.sqlite'
)

