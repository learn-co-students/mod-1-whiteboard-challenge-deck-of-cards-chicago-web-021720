class Deck
    attr_accessor :cards
    
    def initialize
        @cards = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"].map {
            |r| ["Hearts", "Clubs", "Diamonds", "Spade"].map {
                |s| Card.new(s, r) }}.flatten
    end

    def choose_card
        @cards.delete_at(rand(@cards.length))
    end
end

class Card
    attr_accessor :rank, :suit

    def initialize(suit = nil, rank = nil)
        @rank = rank
        @suit = suit
    end
end