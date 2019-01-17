Rails.application.routes.draw do
  namespace :api do
    get '/a_name' => 'pages#name_action'
    get '/string_guessing_game' => 'pages#string_guessing_game'
    get '/segment_guessing_game/:number' => 'pages#segment_guessing_game'
    post '/body_guessing_game' => 'pages#body_guessing_game'
  end
end
