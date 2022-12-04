# require 'sinatra'

class ApplicationController < Sinatra::Base
    get '/' do
        erb :startup_page
    end

end
