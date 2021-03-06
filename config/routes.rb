Rails.application.routes.draw do
	
	root 'static_pages#home'
  	get 'help', to: 'static_pages#help'
	get 'contact', to: 'static_pages#contact'
	get 'about', to: 'static_pages#about'
	get '/signup',  to: 'users#new'
	get '/create', to: 'static_pages#create'
	post '/signup',  to: 'users#create'
	get  '/login',   to: 'sessions#new'
	post '/login',   to: 'sessions#create'
	delete '/logout',  to: 'sessions#destroy'
	get '/showteam', to: 'teams#showteams'
	resources :users
	resources :microposts,          only: [:create, :destroy]
	resources :teams

end	