Rails.application.routes.draw do
  get  '/signup',  to: 'users#new'

  get 'static_pages/home'

  get 'help', to: 'static_pages#help'

  root 'static_pages#home'
end