class Turn

  attr_accessor :turnscore



  def check_if_turnscore_zero(turnscore)
    return turnscore == 0
  end

  def initialize(player, playernum, dices_left)
    @turnscore = 0
    @playernum = playernum
    @dices_left = dices_left
    @player = player
  end
end


