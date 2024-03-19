# The card class represents a single playing card.
class Card
  attr_reader :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def get_suit
    @suit
  end

  def get_value
    @value
  end
end
