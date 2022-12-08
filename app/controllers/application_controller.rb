# require 'sinatra'

class ApplicationController < Sinatra::Base

    configure do
        # set session here also - reminder **
        set :views, 'app/views'
        enable :sessions
        set session_secret, "secret"
    end


    # root route/request
    get '/' do
        binding.pry
        erb :startup_page
    end

end
