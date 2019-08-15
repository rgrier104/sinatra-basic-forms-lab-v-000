require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/puppy' do
    @new_puppy = Puppies.new(params[:name],params[:breed],params[:age])
    
    erb :display_puppy
  end

end
