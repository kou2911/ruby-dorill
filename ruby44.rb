def result_of_uranai(birthday)
  results = ["凶", "中吉", "吉", "大吉"].shuffle
  num = birthday * rand(10) % 4
  puts "今日のあなたの運勢は、#{results[num]}だよ！"
end

puts "誕生日を入力してください！"

birthday = gets.to_i
result_of_uranai(birthday)