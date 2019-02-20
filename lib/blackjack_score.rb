# blackjack_score.rb

VALID_CARDS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "King", "Queen", "Jack"]
hand = VALID_CARDS.shuffle.first(2)

def blackjack_score(hand)
  # hand with 2 cards
  score = 0
  hand.each do |i|
    if i == "King" || i == "Queen" || i == "Jack"
      score = score + 10
    else
      score = score + i
    end
  end
  return score
end
