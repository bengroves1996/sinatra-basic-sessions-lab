require_relative 'config/environment'
configure do
    enable :sessions
    set :session_secret, "doge"
end 

class App < Sinatra::Base


    get '/' do
        erb :index
    end 

    post '/checkout' do 
        
        @input = params[:item]
        session['item'] = "#{@input}"
        @session = session
        erb :index
    end 
end