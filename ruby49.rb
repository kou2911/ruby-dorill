def register_book(books)
  # 本の著者、タイトル、価格をユーザーに入力させ、保存する
  puts '著者を入力してください'
  author =gets.chomp
  puts 'タイトルを入力してください'
  title = gets.chomp
  puts '価格を入力してください'
  price = gets.to_i

  book = { author: author, title: title, price: price }
  books << book
end

def show_books(books)
  puts "見たい番号を入力してください"
  index = 1
  books.each do |book|
    puts "#{index}: #{book[:title]}"
    index += 1
  end
  input = gets.to_i
  show_detail(books[input - 1])  # 保存された本の一覧を出力する
end

def show_detail(book)
  # 選択された本の詳細な情報（著者、タイトル、価格）を出力する
  puts "著者 #{book[:author]}"
  puts "タイトル #{book[:title]}"
  puts "価格 #{book[:price]}円"
end
books=[]
while true do
  puts "[0]本の著者、タイトル、価格を保存する"
  puts "[1]保存された本を表示する"
  puts "[2]終了する"
  input = gets.to_i
  if input== 0
    register_book(books)
    elsif input == 1
      show_books(books)
    else
      exit
    
  end
end