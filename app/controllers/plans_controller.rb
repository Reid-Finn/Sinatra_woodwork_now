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
        @plans = Plan.all.reverse
        erb :'plans/index'
    end
        #show
    get '/plans/:id' do
        @plan = Plan.find(params[:id])
        erb :'plans/show'
    end

    #update
        #edit
    get '/plans/:id/edit' do
        @plan = Plan.find(params[:id])
        erb :'/plans/edit'
    end
        #update
    patch '/plans/:id' do
        plan = Plan.find(params[:id])
        if !plan.title.empty? && !plan.instructions.empty?
            plan.update
            redirect '/plans'
        else
            @error = "Invalid data. Please try again!"
            erb :'plans/edit'
        end
        plan.update(title: params["title"], instructions: params["instructions"], image: params["image"])
    end

    #delete

    post '/plans/:id' do
    end


end