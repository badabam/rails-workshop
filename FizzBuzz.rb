def fizzbuzz
  (1..100).map do |num|
    if num % 15 == 0
      "FizzBuzz"
    elsif num % 5 == 0
      "Buzz"
    elsif num % 3 == 0
      "Fizz"
    else
      num
    end
  end
end



# puts fizzbuzz

class FizzBuzz < Range

  def count
    self.map do |num|
      if num % 15 == 0
        "FizzBuzz"
      elsif num % 5 == 0
        "Buzz"
      elsif num % 3 == 0
        "Fizz"
      else
        num
      end
    end
  end

  def initialize (a, b)
    a = super(a, b)
    puts count
  end
end

FizzBuzz.new(1, 10)

