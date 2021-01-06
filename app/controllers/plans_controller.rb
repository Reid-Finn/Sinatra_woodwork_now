class PlansController < ApplicationController

    #create
        #new
    get '/plans/new' do
        erb :'/plans/new'
    end
        #create
    post '/plans' do
        plan = Plan.create(params)
        if !plan.title.empty? && !plan.instructions.empty?
            plan.save
            redirect '/plans'
        else
            @error = "Invalid data. Please try again!"
            erb :'plans/new'
        end
    end
    #Read
        #index
    get '/plans' do
        @plans = Plan.all
        erb :'plans/index'
    end
        #show
    get '/plans/:id' do
        @plan = Plan.find(params["id"])
        erb :'plans/show'
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