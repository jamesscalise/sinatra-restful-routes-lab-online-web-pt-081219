class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/' do
  end

  get '/recipes' do
    @recipes = Recipe.all
    erb :index
  end
  
  get '/recipes/new' do
    erb :new
  end
  
  post 'recipes' do
  end
  
  get '/recipes/:id' do
    @recipe = Recipe.find(params[:id])
    erb :show
  end
  
  get '/recipes/:id/edit' do
  end
  
  delete '/recipes/:id/delete' do
    @recipe = Recipe.find(params[:id])
    @recipe.delete
    redirect to '/recipes'
  end
  
  

end
