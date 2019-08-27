require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do
    @user = User.find_by(username: params[:username])
    session[:user_id] = @user.id
    if @user
      redirect_to '/account'
    else
      redirect_to '/error'
    end
  end

  get '/account' do

  end

  get '/logout' do

  end

end

