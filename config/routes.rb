Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/pets', to: 'pets#index', as: :pets
  # receive information from the user
  post '/pets', to: 'pets#create'
  # first step to create is to provide the form
  get '/pets/new', to: 'pets#new', as: :new_pet
  get '/pets/:id', to: 'pets#show', as: :pet
  delete '/pets/:id', to: 'pets#destroy'
  patch '/pets/:id', to: 'pets#update'

  get '/pets/:id/edit', to: 'pets#edit', as: :edit_pet

end
