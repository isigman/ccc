Rails.application.routes.draw do

  #Member routes
    get 'member/register', to: 'member#register_index'
    post 'member/register', to: 'member#register'

  #Article routes
    #Create
      get '/article/new', to: 'article#create_index'
      post '/article/new', to: 'article#create'
    #Delete
      get '/articles:id/delete', to: 'article#delete'
    #Read
      get '/articles', to: 'article#list'
      get '/articles/:id', to: 'article#single'

    #Home routes
      get '/', to: 'home#index'

end
