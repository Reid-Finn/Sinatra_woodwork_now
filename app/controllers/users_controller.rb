class UsersController < ApplicationController


    #users can sign up

    get '/signup' do
        erb :'users/signup.erb'
    end

    post '/signup' do
        User.create(params)

    #users can delete account


end