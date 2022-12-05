class TweetsController < ApplicationController
    # get 'tweets/:id' do
    #     params[:id]
    # end

    # returning all tweets currently in db
    get '/tweets' do
        erb :index
    end


end
