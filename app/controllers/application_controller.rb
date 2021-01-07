require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    enable :sessions
    set :sessions_secret, "notsecret"
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  def logged_in?
    !!User.find_by(id: session[:user_id])
  end
end
