class PlansController < ApplicationController

    #create
        #new
    get '/plans/new' do
    end
        #create
    post '/plans' do
    end
    #Read

        #index

    get '/plans' do
        @plans = Plan.all
        
        erb :'plans/index'
    end
        #show

    get 'plans/:id' do
    end

    #update
        #edit
    get '/plans/:id/edit' do
    end
        #update
    patch '/plans/:id' do
    end

    #delete

    post '/plans/:id' do
    end


end