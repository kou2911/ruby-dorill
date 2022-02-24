def output(hello)
  hello.times do |hello|
    puts "Hello!"
    
  end
end

puts "何回表示させますか？"
hello = gets.to_i

output(hello)