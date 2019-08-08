class Customer

  attr_reader :name, :borrower_number
  attr_accessor :books

  def initialize(name, borrower_number)
    @name = name
    @borrower_number = borrower_number
    @books = []
  end

  # def try_to_borrow_book(book)
  #   if @library.books_in_stock.include?(book)
  #     @library.lend_book(book, self)
  #   else
  #     return "not in stock"
  #   end
  # end

end
