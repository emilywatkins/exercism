class Pangram
  def self.pangram?(phrase)
    alphabet = ('a'..'z').to_a

    alphabet.all? {|letter| phrase.downcase.include?(letter)}
  end
end

module BookKeeping
  VERSION = 6
end
