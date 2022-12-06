class TweetsController < ApplicationController

    get '/tweets' do
        @tweets = Tweet.all 
        erb :'tweets/index'
    end

    get '/tweets/new' do 
        erb :'/tweets/new'
    end

    get 'tweets/:id' do 
        # binding.pry
        @tweet = Tweet.find(params[:id])
        erb :'/tweets/show'
    end

    post '/tweets' do
        @tweet = Tweet.create(params)
        binding.pry
        redirect "/tweets/@tweet.id"
    end

    get 'tweets/:id/edit' do
        # retireve the object
        # autofill a form with existing object values
        # display to our user to fill out

    end

    patch '/tweets/:id' do
        # no views to show here
        # update the associated object with new attributes
        
    end

    delete '/tweet/:id' do
        # no view
        # delete the associated object with id
    end






end
