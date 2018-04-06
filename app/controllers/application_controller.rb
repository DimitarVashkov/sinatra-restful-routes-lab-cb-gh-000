require_relative '../models/recipe'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  get '/' do
    @recipes = Recipes.all
    erb :index
  end

  get '/recipes' do
    @recipes = Recipes.all
    erb :index
  end
end
