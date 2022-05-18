class Hangman

  def initialize
    @letter = ('a'..'z').to_a
    @word = words.sample
  end

  def words
    [
      ["cricket", "A game played by gentlemen"],
      ["jogging", "We are not walking..."],
      ["celebrate", "Remembering special moments"],
      ["continent", "There are 7 of these"],
      ["exotic", "Not from around here..."],
    ]
  end

  def begin
    # ask user for a letter
    puts "New game started... your clue is #{ @word.last }"
    puts "Enter a letter"
    guess = gets.chomp

    puts "You guessed #{guess}"
  end

end

game = Hangman.new
game.begin