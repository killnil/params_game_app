class Api::PagesController < ApplicationController
  def name_action
    @name = params[:my_name]

    if @name[0].downcase == "a"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end

    render 'name_view.json.jbuilder'
  end

  def string_guessing_game
    @guess = params[:guess].to_i
    correct_number = 42

    if @guess > correct_number
      @message = "Guess Lower"
    elsif @guess < correct_number
      @message = "Guess Higher, you can do it."
    else
      @message = "You got, Good Buddy"
    end

    render 'string_guessing_game.json.jbuilder'
  end
end








