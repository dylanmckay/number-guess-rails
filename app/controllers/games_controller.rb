class GamesController < ApplicationController
  def show
    @game = Game.find(params[:id])
  end

  def new
  end

  def create
    game = Game.create!
    redirect_to game
  end
end
