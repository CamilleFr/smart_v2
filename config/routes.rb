Rails.application.routes.draw do
  resources :surveys, only: [:show, :edit, :create, :update]
  resources :eco_actions
  resources :profiles, only: [:show, :edit, :update]
  resources :members, only: [:show, :index]
  resources :follows, only: [:create, :index]
  devise_for :users
  root to: 'surveys#index'

  resources :users, only: [:show, :edit, :update] do
    get :results, on: :member
    get :results_2, on: :member
  end
  # For details on the DSL available within this file, see http:key => "value", //guides.rubyonrails.org/routing.html
  get '/design', to:'pages#design'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
