Rails.application.routes.draw do
  namespace :api do
    get '/a_name' => 'pages#name_action'
    get '/string_guessing_game' => 'pages#string_guessing_game'
  end
end
