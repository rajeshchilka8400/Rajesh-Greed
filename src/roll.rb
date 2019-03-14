class Roll

attr_reader :score
attr_reader :dices
attr_reader :scored_dices
  
def initialize
  @scored_dices = 0
  @score = 0
  @dices = []
end

def << (num)
    @dices << num
end

end


