class TweetsController < ApplicationController

    get '/tweets' do
        @tweets = Tweet.all 
        erb :'tweets/index'
    end

    get '/tweets/new' do 
        erb :'/tweets/new'
    end

    get '/tweets/:id' do 
        # # binding.pry
        # id = params[:id]
        # binding.pry
        @tweet = Tweet.find(params[:id])
        erb :'/tweets/show'
    end

    post '/tweets' do
        @tweet = Tweet.create(params)
        redirect "tweets/#{@tweet.id}"
    end

    get '/tweets/:id/edit' do
        # retireve the object
        # autofill a form with existing object values
        # display to our user to fill out
        @tweet = Tweet.find(params[:id].to_i)
        erb :'tweets/edit'
        
        
    end

    patch '/tweets/:id' do
        # no views to show here
        # update the associated object with new attributes
        @tweet = Tweet.find(params[:id].to_i)
        @tweet.update(title: params[:title], content: params[:content])
        redirect "/tweets/#{@tweet.id}"
    end

    delete '/tweets/:id' do
        # no view
        # delete the associated object with id
        @tweet = Tweet.find(params[:id].to_i)
        @tweet.destroy
        redirect "/tweets"
    end






end
