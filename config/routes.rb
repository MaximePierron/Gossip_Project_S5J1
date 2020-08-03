Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "dynamic#home"
  get 'team', to: 'static#team' 
  get 'contact', to: 'static#contact'
  get 'home/:first_name', to: 'dynamic#home_first_name', as: 'first_name'
  get 'home/gossip/:id', to: 'dynamic#gossip', as: 'gossip'
  get 'home/gossip/user/:id', to: 'dynamic#author', as: 'user'
  
end
