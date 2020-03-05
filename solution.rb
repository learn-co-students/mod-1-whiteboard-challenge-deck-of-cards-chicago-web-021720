require 'pry'
class Deck
  @@suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
  @@ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

  attr_accessor :cards

  def initialize()
    @cards = Array.new(52).each_with_index.map do |e,i|
      suitid = (i/13).round
      rankid = i % 13
      Card.new(self.class.suits[suitid], self.class.ranks[rankid])
    end
  end

  def choose_card
    s = self.cards.sample
    self.cards.reject! do |m|
      m == s
    end
    s
  end
  #def self.choose_card
  #  Card.new(self.suits.sample,self.ranks.sample)
  #end
  #def self.choose_card_with_order(order)

  #  Card.new(self.suits[suitid],self.ranks[rankid])
  #end

  def self.suits
    @@suits
  end

  def self.ranks
    @@ranks
  end
end

class Card
  attr_accessor :suit, :rank
  def initialize(suit,rank)
    @suit = suit
    @rank = rank
  end
end
