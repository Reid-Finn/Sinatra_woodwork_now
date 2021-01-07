class UsersController < ApplicationController


    #users can sign up

    get '/signup' do
        erb :'users/signup'
    end

    post '/signup' do
        user = User.new(params)
            if user.save
                session[:user_id] = user.id
                redirect '/plans'
            else
                @error = "invalid credentials"
                erb :'/users/signup'
                
            end
    end

    #users can delete account


end