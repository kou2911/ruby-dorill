def fizz_buzz
  100.times do |num|
    if num % 15 == 0
      puts "FizzBuzz"
      elsif num % 3 == 0
        puts "Fizz"
        elsif num % 5 == 0
          puts "Buzz"
        else 
          puts num
    end
  end
end

fizz_buzz

