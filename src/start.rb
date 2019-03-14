require ('./player.rb')
require ('./game.rb')

p1 = Player.new "Rajesh", 1
p2 = Player.new "Phagun", 2
game = Game.new [p1, p2]
game.start

