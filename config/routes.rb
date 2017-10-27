Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch "capture", to:"pokemons#capture"
  patch "damage", to:"pokemons#damage"
  get "create_pokemon", to:"pokemons#new"
  post "create_pokemon", to: "pokemons#create"
  post "/pokemon", to: "home#index"
 end
