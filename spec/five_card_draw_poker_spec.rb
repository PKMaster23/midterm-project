require_relative '../lib/five_card_draw_poker'

# Tests for the Card class.
RSpec.describe Card do
  describe '#initialize' do
    it 'creates a new card with its suit and value' do
      card = Card.new('Hearts', 'A')
      expect(card.suit).to eq('Hearts')
      expect(card.value).to eq('A')
    end
  end

  describe '#get suit' do
    it 'returns the suit of the card' do
      card = Card.new('Diamonds', '5')
      expect(card.get_suit).to eq('Diamonds')
    end
  end

  describe '#get_value' do
    it 'returns the value of the card' do
      card = Card.new('Clubs', 'K')
      expect(card.get_value).to eq('K')
    end
  end
end

RSpec.describe Deck do
  describe '#initialize' do
    it 'creates a deck of 52 cards' do
      deck = Deck.new
      expect(deck.cards.length).to eq(52)
    end
  end

  describe '#shuffle' do
    it 'shuffles the deck' do
      deck1 = Deck.new
      deck2 = Deck.new
      expect(deck1.cards).not_to eq(deck2.cards)
    end
  end

  describe '#deal' do
    it 'deals a specified number of cards from the deck' do
      deck = Deck.new
      cards = deck.deal(5)
      expect(cards.length).to eq(5)
      expect(deck.cards.length).to eq(47)
    end
  end
end
