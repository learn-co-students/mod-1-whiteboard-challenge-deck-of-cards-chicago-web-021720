class Deck

    attr_reader :cards

    def initialize
        @cards = create_deck
    end

    def create_deck
        cards_arr = []
        Card.suits.each do |suit|
            Card.ranks.each do |rank|
                cards_arr << Card.new(suit, rank)
            end
        end
        cards_arr
    end

    def choose_card
        cards.pop
    end

end


class Card

    attr_reader :suit, :rank

    @@suits = ['Hearts', 'Clubs', 'Diamonds', 'Spades']
    @@ranks = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']

    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end

    def self.suits
        @@suits
    end

    def self.ranks
        @@ranks
    end

end
