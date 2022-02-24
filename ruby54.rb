def register_data(data)
  puts "車種を入力してください"
  car_model = gets.chomp
  puts "1Lあたりの走行距離(km/l)を入力してください"
  driving_range = gets.to_i
  puts "乗車人数を入力してください"
  ride_count = gets.to_i
  car ={car_model: car_model,driving_range: driving_range,ride_count: ride_count}
  data << car
end

def list_data(data)
  data.each_with_index do |data,index|
    puts "#{index}:#{data[:car_model]}"
    index += 1
  end
  puts "確認したい番号を入力してください"
  input = gets.to_i 
  car = data[input]
  puts "車種:#{car[:car_model]}"
  puts "走行距離: #{car[:driving_range]}"
  puts "乗車人数:#{car[:ride_count]}"

end





data = []
while true 
  puts "選択してください"
  puts "[0]データの登録"
  puts "[1]データの確認"
  puts "[2]プログラムの終了"
  input = gets.to_i
  if input == 0
    register_data(data)
    elsif input == 1
      list_data(data)
      elsif input == 2
        exit
      else
        puts "無効な値です"
  end
end