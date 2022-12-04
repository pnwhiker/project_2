# require 'sinatra'

class ApplicationController < Sinatra::Base

    configure do
        set :views, 'app/views'
    end

    get '/' do
        erb :startup_page
    end

end
