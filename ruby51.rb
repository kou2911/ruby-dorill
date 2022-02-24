def register_data(datas)
  puts "名前を入力してください"
  name = gets.chomp
  puts "年齢を入力してください"
  age = gets.to_i
  puts "身長を入力してください(m単位)"
  height = gets.to_i
  puts "体重を入力してください"
  weight = gets.to_i
  data = {name: name,age: age,height: height,weight: weight}
  datas << data
end

def show_data(datas)
  puts "見たい人の番号を入力してください"
  input = 1
  datas.each do |data|
    puts "#{input}:#{data[:name]}"
    input +=1 
  end
  input = gets.to_i
  detail(datas[input-1])
end

def detail(data)
  puts "名前:#{data[:name]}"
  puts "年齢:#{data[:age]}"
  puts "身長:#{data[:height]}"
  puts "体重:#{data[:weight]}"
  calculate_bim(data)
end

def calculate_bim(data)
  bmi = ((data[:height]*100)/data[:weight]).floor(2)
  puts bmi
  
end

datas = []
while true
  puts "選択してください"
  puts "[0]登録する"
  puts "[1]データを確認する"
  puts "[2]終了する"
  input = gets.to_i

  if input == 0
    register_data(datas)
  elsif input == 1
   show_data(datas)
  elsif input == 2
    exit
  else
    puts "無効な値です"
  end
end