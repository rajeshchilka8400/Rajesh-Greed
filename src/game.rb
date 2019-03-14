require ('./player.rb')
require ('./dice.rb')
require ('./roll.rb')
require ('./turn.rb')
require ('./score.rb')

class Game

attr_reader :players

def start_round

 @players.each_with_index do |player,index| 

    while index <= @players.count - 1 

    dices_left = @dice.total_no_of_dices

      while dices_left != 0 

          turn = Turn.new(player, index, dices_left)
          rolled_dices_set =  @dice.roll dices_left
          print "Dice rolled for Player #{index} is #{rolled_dices_set}" ,"\n"
          turn_score = @total_score.score(rolled_dices_set)
          puts "Turn score is : #{turn_score[0]}"
          @total_score.scores[index] += turn_score[0]
          dices_left = @dice.no_of_unscored_dices_left(turn_score[1])

          puts "Total score for player #{index} is : #{@total_score.scores[index]}"

          puts "-----------------------------------------------------------------"
        
          if (@total_score.scores[index] <= 300)
            @total_score.scores[index] = 0
            break
          end

          if (turn_score[0] == 0)
            break
          end 

          if (dices_left == 0)
            break
          end


          if (@total_score.scores[index] >= 3000)
             puts "Total score for player #{index} is : #{@total_score.scores[index]}"
             winner_of_game index
          end 

          end   #while ends here

       if (index < @players.count - 1 )
         index = index + 1
        next
      elsif index == @players.count - 1
        index = 0
       redo
     else
      break
     end
  end

  end   # do ends here

end

def winner_of_game index
puts "----------------Winner---------------"
puts "Winner  of this game is Player #{index}"
exit(true)
end


def start
	puts "------------------Starting New Round-------------------"
      start_round
end

def initialize(players)
	@players = players
	@dice = Dice.new 5
  @total_score = Score.new players.count
end

end