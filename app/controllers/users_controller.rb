class UsersController < ApplicationController


    #users can sign up

    get '/signup' do
        erb :'users/signup'
    end

    post '/signup' do
        user = User.new(params)
            if user.username.empty? || user.password.empty?
                @error = "Please fill out Username and Password to proceed."
                erb :'/users/signup'
            elsif User.find_by(username: user.username)
                @error = "Account name already taken. Please try again."
                erb :'users/signup'
            else
                user.save
                session[:user_id] = user.id
                redirect '/plans'
            end
    end

    #users can delete account


end