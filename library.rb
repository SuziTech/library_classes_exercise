class Library

  attr_reader :name, :books_in_stock, :books_on_loan

  def initialize(name)
    @name = name
    @books_in_stock = []
    @books_on_loan = []
  end

  def add_book(book)
    @books_in_stock.push(book)
  end

  def lend_book(book, customer)
    @books_in_stock.delete(book)
    @books_on_loan.push(book)
  end

end
