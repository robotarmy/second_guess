NAMEThisApp::Application.routes.draw do
  resources :votes    , :only => [:create]
  resources :products , :only => [:create, :new, :show, :index]

  devise_for :users
  get 'echo/hello'

  root :to => 'product#index'
end
