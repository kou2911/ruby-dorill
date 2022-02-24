class Article

  def initialize(author, title, content)
    @author = author
    @title = title
    @content = content
  end

  @author = "阿部"
  @title = "Rubyの素晴らしさについて"
  @content = "Awesome Ruby!"

  puts "著者:#{@author}"
  puts "タイトル:#{@title}"
  puts "本文:#{@content}"


end
Article.new(@author,@title,@content)
