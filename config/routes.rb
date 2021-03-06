Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'portfolios#index'

  resources :portfolios do
    resources :positions do
      resources :journals
    end
  end

  match '/lookup', :to => 'positions#lookup', :via => [:post]
end


