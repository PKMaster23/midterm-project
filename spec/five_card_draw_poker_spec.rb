require_relative '../lib/five_card_draw_poker'

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
