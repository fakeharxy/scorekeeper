class GamesController < ApplicationController

  def index
  end

  def create
    if game_params[:secret] == ENV["SECRET"]
      @game = Game.new(game_params.except(:secret))
      @game.save
    end
    redirect_to '/'
  end

  private

  def game_params
    params.require(:game)
      .permit(:oli, :paul, :john, :tom, :al, :secret)
      .merge(:date => Date.today)
  end
end
