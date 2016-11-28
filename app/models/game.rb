class Game < ApplicationRecord

  def self.totals
    scores = { "Oli" => Game.sum(:oli),
               "John" => Game.sum(:john),
               "Tom" => Game.sum(:tom),
               "Paul" => Game.sum(:paul),
               "Al" => Game.sum(:al)
    }
    scores.sort_by{ |name,score| score}.reverse
  end

  def self.wins(name)
    Game.where(name => 6).count
  end 
  
end
