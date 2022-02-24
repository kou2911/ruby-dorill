def fizzbuzz(max_num)
  (1..max_num).each do |nums|
  
  if nums % 5 == 0 && nums % 3 == 0
    puts "FizzBuzz"
  elsif nums % 3 == 0
    puts "Fizz"
  elsif nums % 5 == 0
    puts "Buzz"
  else
    puts nums
  end
 end
end

puts 'いくつまで数えますか？'
num = gets.to_i
fizzbuzz(num)