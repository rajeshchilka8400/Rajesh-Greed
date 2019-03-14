class Dice

  attr_reader :total_no_of_dices


  def no_of_unscored_dices_left(dices)
    count = 0
    dices.each {|key, value| 
    if dices[key] != 0 
    count+=dices[key]
    end
   }
   return count
  end

  def roll total_no_of_dices
    (1..total_no_of_dices).inject([]) { |x| x << rand(6)+1; x; }
  end

  def initialize(total_no_of_dices)
    @total_no_of_dices = total_no_of_dices
  end

end
