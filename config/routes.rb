Rails.application.routes.draw do
  get '/ideas/:id' => 'application#show'
  get '/new' => 'application#new'
  get '/create/' => 'application#create'
  get '/ideas/:id/edit' => 'application#edit'
  get '/update/:id' => 'application#update'
  get '/ideas/:id/delete' => 'application#destroy'
  get '/ideas' => 'application#index'
end
