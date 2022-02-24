def calculate_points(amount, is_birthday)
  if amount <= 999 && is_birthday 
    points = (amount * 0.03)*5
  elsif amount >= 1000 && is_birthday
    points =(amount * 0.05) * 5
    elsif amount <= 999 && is_birthday == false
      points = amount * 0.03
    elsif amount >= 1000 && is_birthday == false
      points = amount * 0.05
  end
  puts "ポイントは#{points.floor}点です。"

end

calculate_points(500, false) 
calculate_points(2000, false) 
calculate_points(232323, true) 