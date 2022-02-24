class Fruit
  def self.fresh
    puts "採れたて新鮮の果実です。"
    # 正しくメソッドを定義した上で、ここに処理を記入してください
  end
 
  def initialize(name,price)
    @name = name
    @price = price
    # ここに処理を記入してください
  end
 
  def introduce
    puts "#{@name}は#{@price}円です。"
  end
 end
 
 apple = Fruit.new("リンゴ",120)
 orange = Fruit.new("オレンジ", 200)
 strawberry = Fruit.new("イチゴ", 60)
 # 3つのインスタンスを生成してください
 Fruit.fresh
 apple.introduce
 orange.introduce
 strawberry.introduce
 # クラスメソッドを呼び出し、「採れたて新鮮な果実です」と表示してください
 # インスタンス毎にインスタンスメソッドを呼び出し、「【名前】は【価格】円です」と表示してください