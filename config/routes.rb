Rails.application.routes.draw do
  root                          'static_pages#home'
  get     'help'            =>  'static_pages#help'
  get     'about'           =>  'static_pages#about'
  get     'contact'         =>  'static_pages#contact'
  get     'login'           =>  'users#new'

  resources :users,      only:  [:new, :create, :show, :index]

  resources :events,     only:  [:new, :create, :show, :index]

  resources :sessions,   only:  [:new, :create, :destroy]
end