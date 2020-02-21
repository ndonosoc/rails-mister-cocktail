Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'cocktails', to: 'cocktails#index'
  get 'cocktails/new', to: 'cocktails#new'
  get 'cocktails/:id', to: 'cocktails#show', as: :cocktail
  post 'cocktails', to: 'cocktails#create'
  delete 'cocktails/:id', to: 'cocktails#destroy'
  get 'cocktails/:cocktail_id/doses/new', to: 'doses#new'
  post 'cocktails/:cocktail_id/doses', to: 'doses#create', as: :cocktail_doses
  delete '/doses/:id', to: 'doses#destroy', as: :dose
  # resources :cocktails, except: [:edit, :update] do
  #   resources :doses, only: [:new, :create]
  # end

  # resources :doses, only: [:destroy]
end
