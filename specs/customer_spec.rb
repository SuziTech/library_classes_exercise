require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../customer')
require_relative('../book')
require_relative('../library')

class TestCustomer < MiniTest::Test

  def setup
    @customer1 = Customer.new('John', '684')
    @book1 = Book.new('1', 'To Kill a Mockingbird')
  end

  def test_get_customer_name
    assert_equal('John', @customer1.name)
  end

  def test_get_borrower_number
    assert_equal('684', @customer1.borrower_number)
  end

  def test_customer_starts_with_no_books
    assert_equal([], @customer1.books)
  end

  def test_library_can_add_book
    @library.add_book(@book1)
    @library.add_book(@book2)
    assert_equal(2, @library.books_in_stock.count)
  end

  def test_try_to_borrow_book__successful    
    @customer1.try_to_borrow_book(@book1)
    assert_equal(1, @customer1.books.count)
  end
  #
  # def test_try_to_borrow_book__unsuccessful
  #
  # end


end
