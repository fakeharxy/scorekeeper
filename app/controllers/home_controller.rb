class HomeController < ApplicationController
  def index
    @scores = Game.totals
    @scores.each_with_index do |name, index|
      @scores[index].push(Game.wins(name.first.downcase))
    end
    @scores =  @scores.sort_by{ |a| [-a[1], -a[2]] }
  end
end
