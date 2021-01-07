class PlansController < ApplicationController

    #create
        #new
    get '/plans/new' do
        if logged_in?
            erb :'/plans/new'
        else
            redirect '/login'
        end
    end
        #create
    post '/plans' do
        plan = current_user.plans.build(params)
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

        if logged_in?
            @plans = Plan.all.reverse
            erb :'plans/index'
        else
        
            redirect '/login'
        end
    end
        #show
    get '/plans/:id' do
        if logged_in?
            @plan = Plan.find(params[:id])
            erb :'/plans/show'
        else
            redirect '/login'
        end
    end

    #update
        #edit
    get '/plans/:id/edit' do
        if logged_in?
            @plan = Plan.find(params[:id])
            erb :'/plans/edit'
        else
            redirect '/login'
        end
    end
        #update
    patch '/plans/:id' do
        @plan = Plan.find(params[:id])
        if !params["plan"]["title"].empty? && !params["plan"]["instructions"].empty?
            @plan.update(params["plan"])  
            redirect "/plans/#{params[:id]}"
        else
            @error = "Invalid data. Please try again!"
            erb :'plans/edit'
        end
        
    end

    #delete

    delete '/plans/:id' do
        plan = Plan.find(params[:id])
        plan.destroy
        redirect '/plans'
    end


end