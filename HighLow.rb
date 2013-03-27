
class HighLow

  TOTAL_TRIES = 7

  def checkAnswer (guess)
    if guess < @secret
      puts "Too low!"
    elsif guess > @secret
      puts "Too high!"
    else
      puts "***YEAH! You did it!***"
      exit
    end
  end

  def ask
    puts "(Try %d of %d) Your guess, please!" % [@tries + 1, TOTAL_TRIES]
    while @tries < TOTAL_TRIES do
      puts "You have #{TOTAL_TRIES - @tries} more tries."
      value = gets.to_i
      checkAnswer value
      @tries += 1
    end
    puts "****** GAME OVER ******"
  end

  def initialize
    @tries = 0
    @secret = rand(1..100)
    puts "pssst: #{@secret}"
  end

end

HighLow.new.ask
