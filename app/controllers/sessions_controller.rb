class SessionsController < ApplicationController
    #User can log in
    get '/login' do
        erb :'/users/login'
    end


    post '/login' do
        
        if params["username"].empty? || params["password"].empty?
            @error = "Please fill out Username and Password to proceed."
            erb :'/users/login'
            
        else
            user = User.find_by(:username => params[:username])
            if user && user.password = params[:password]
              session[:user_id] = user.id
              redirect "/plans"
            else
                @error = "Account not found."
                erb :'/users/login'

            end
        end
    end

    


    #User can log out
    get '/logout' do
        session.clear
        redirect '/'
    end


end