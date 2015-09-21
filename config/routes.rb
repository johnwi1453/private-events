Rails.application.routes.draw do
  get 'events/new'

  get 'events/create'

  get 'events/show'

  get 'events/index'

  root                          'static_pages#home'
  get     'help'            =>  'static_pages#help'
  get     'about'           =>  'static_pages#about'
  get     'contact'         =>  'static_pages#contact'

  resources :users,      only:  [:new, :create, :show, :index]

  resources :events,     only:  [:new, :create, :show, :index]
end