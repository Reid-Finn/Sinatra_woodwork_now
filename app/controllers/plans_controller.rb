class PlansController < ApplicationController
    before do
        require_login
    end
    #create
        #new
    get '/plans/new' do
       erb :'/plans/new'
    end
        #create
    post '/plans' do
        plan = current_user.plans.build(params)
        if plan.save
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
        @plan = Plan.find_by(id: params[:id])
        if @plan
            erb :'/plans/show'
        else
            redirect '/login'
        end
    end

    #update
        #edit
    get '/plans/:id/edit' do
        @plan = Plan.find(params[:id])
        erb :'/plans/edit'
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