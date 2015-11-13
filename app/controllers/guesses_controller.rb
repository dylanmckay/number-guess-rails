class GuessesController < ApplicationController
  def show
    @guess = Guess.find(params[:id])
  end

  def create
    @guess = Guess.create!(params.require(:guessed_number))
    redirect_to guess
  end
end
