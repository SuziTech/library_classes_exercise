class Library

  attr_reader :name, :books

  def initialize(name)
    @name = name
    @books = []
  end

  def add_book(book)
    @books.push(book)
  end
  
end
