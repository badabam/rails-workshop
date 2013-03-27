require 'sinatra'

class NumbersGame
  attr_reader :tries
  attr_reader :number

  def initialize
    @number = rand(1..100)
    @tries = 7
  end

  def guess!(guess)
    guess = guess.to_i
    @tries -= 1

    if @tries == 0
      :game_over
    elsif guess == @number
      :correct
    elsif guess < @number
      :too_low
    else
      :too_high
    end
  end
end

$game = NumbersGame.new


# Sinatra routes

get '/' do
  erb :guess
end

post '/guess' do
  @result = $game.guess!(params[:guess])

  if @result == :too_low || @result == :too_high
    erb :guess
  elsif @result == :game_over
    "Tut mir leid, du hast verloren.\n Die gesuchte Zahl war #{@number}."
  elsif @result == :correct
    "Hurra, du hast gewonnen! :D"
  end
end

run Sinatra::Application
