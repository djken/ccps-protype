Rails.application.routes.draw do
  resources :classegroups
  resources :etudiantclasses
  resources :heures
  resources :horaires
  resources :jours
  resources :cours
  resources :salles
  resources :sessionencours

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
