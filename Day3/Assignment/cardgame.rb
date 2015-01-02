class Player

  attr_accessor :player_cards, :power

  def initialize
    @player_cards = []
    @power=6
  end

  def distribute(cards)
    player_cards.push(cards)
  end


  def getPower
    power1 = Rule.new player_cards
    power = power1.checkPower
    puts "power is:#{power}"
  end
  end

class Deck

  attr_accessor :cardArray


  def initialize
    @cardArray = []
  end

  def get_card
    cardArray.delete_at(rand(cardArray.length))
  end

  def create_card
    current_suit = 's'
    for i in 0..51
      cardArray[i] = Card.new
      if i == 13
        current_suit='c'
      elsif i == 26
        current_suit='d'
      elsif i == 39
        current_suit='h'
      end
      cardArray[i].suit = current_suit
      cardArray[i].number = ((i)%13+1)
      #cardArray[i].to_s
    end

  end

end



class Card

    attr_accessor :suit, :number

    def to_s
      puts "  #{suit} , #{number}"
    end

end


class Rule
  attr_accessor :cards

  def initialize cards
    @cards=  cards.sort_by { |number|}
    puts cards

  end

  def checkPower

      isTrial
  end

  def isTrial
    if((cards[0].number.to_i == cards[1].number.to_i) == cards[2].number.to_i)
      1
    else
      isDoubleRun
    end
  end

  def isDoubleRun
    if(isRun==3 && isColor==4)
      2
    else
      isRun
    end
  end

  def isRun
     if(cards[0].number.to_i == cards[1].number.to_i-1 && cards[1].number.to_i-1==cards[2].number.to_i-2)
       3
     elsif(cards[0].number.to_i == 1 && cards[1].number.to_i == 12 && cards[2].number.to_i == 13)
       3
     else
       isColor
     end

  end


  def isColor
    if(cards[0].suit == cards[1].suit && cards[1].suit == cards[2].suit)
      4
    else
      twoOfAKind
    end
  end

    def twoOfAKind
      if(cards[0].number == cards[1].number || cards[1].number== cards[2].number || cards[0].number== cards[2].number)
        5
      else
        6
      end
  end
end




















print "Enter the Number of player :: "
no_of_players = gets.to_i

players = []
for i in 0..no_of_players-1
  players[i] = Player.new
end

d = Deck.new
d.create_card

#Distribute cards among respective players
for j in 0..2
  for i in 0..no_of_players-1
    random_card = d.get_card
    players[i].distribute(random_card)
  end
end

#for i in 0..no_of_players-1
 # puts players[i].getPower
#end
playerIndex = 0
pow = 6
for i in 0..no_of_players-1
  puts players[i].power
  if(players[i] < pow)
    playerIndex = i
    pow = players[i].power
  end
end

puts "Player #{playerIndex+1} wins"
