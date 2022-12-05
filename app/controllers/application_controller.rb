# require 'sinatra'

class ApplicationController < Sinatra::Base

    configure do
        # set session here also - reminder **
        set :views, 'app/views'
    end


    # root route/request
    get '/' do
        erb :startup_page
    end

end
