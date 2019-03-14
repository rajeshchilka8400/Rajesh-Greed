class Score

attr_reader :scores


  def check_for_min_score_reached(score)
    return score <= 350
  end


	def score (dice)
    sum = 0
    rolls = dice.inject(Hash.new(0)) { |result, element| result[element] += 1; result; }
  	rolls.each { |key, value| 
    if key == 1  && value >=3 
      sum += 1000 
      rolls[key] -= 3
    end
    if key == 6  && value >=3 
      sum += 600 
      rolls[key] -= 3
    end
    if key == 5  && value >=3 
      sum += 500 
      rolls[key] -= 3
    end
    if key == 4  && value >=3 
      sum += 400 
      rolls[key] -= 3
    end
    if key == 3  && value >=3 
      sum += 300 
      rolls[key] -= 3
    end
    if key == 2  && value >=3 
      sum += 200 
      rolls[key] -= 3
    end
    if key == 1 && rolls[key] > 0
       sum += 100*value 
       rolls[key] = 0
     end
     if key == 5 && rolls[key] > 0
      sum += 50*value 
      rolls[key] = 0
    end
    }
    return sum,rolls
	end

def initialize (players)
    @scores = (1..players).map {|x| 0}
end

end



