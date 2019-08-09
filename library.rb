require 'date'

class Library

  attr_reader :name
  attr_accessor :books_in_stock, :books_on_loan, :loan_period

  def initialize(name, loan_period)
    @name = name
    @books_in_stock = []
    @books_on_loan = []
    @loan_period = loan_period
  end

  def add_book(book)
    @books_in_stock.push(book)
  end

  def lend_book(book, customer)
    #binding.pry
    @books_in_stock.delete(book)
    @books_on_loan.push(book)
    customer.books.push(book)
    book.on_loan_until_date = Date.today + loan_period
  end

end
