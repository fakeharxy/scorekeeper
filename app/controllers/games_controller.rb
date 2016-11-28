class GamesController < ApplicationController

  def index
  end

  def create
    @game = Game.new(game_params)
    @game.save
    redirect_to '/'
  end

  private

  def game_params
    params.require(:game)
      .permit(:oli, :paul, :john, :tom, :al)
      .merge(:date => Date.today)
  end
end
