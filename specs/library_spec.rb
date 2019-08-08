require('minitest/autorun')
require('minitest/rg')
require('date')
require('pry')
require_relative('../library')
require_relative('../book')
require_relative('../customer')

class TestLibrary < MiniTest::Test

  def setup
    @library = Library.new('Central Library', 21)
    @book1 = Book.new('1', 'To Kill a Mockingbird')
    @book2 = Book.new('2', '1984')
    @book3 = Book.new('3', 'Orlando')
    @customer1 = Customer.new('John', '684')
  end

  def test_get_library_name
    assert_equal('Central Library', @library.name)
  end

  def test_library_starts_with_no_books
    assert_equal(0, @library.books_in_stock.count)
  end

  def test_library_can_add_book
    @library.add_book(@book1)
    @library.add_book(@book2)
    assert_equal(2, @library.books_in_stock.count)
  end

  def test_library_can_lend_book
    @library.add_book(@book1)
    @library.add_book(@book2)
    @library.lend_book(@book1, @customer1)
    assert_equal(1, @library.books_in_stock.count)
    assert_equal(1, @library.books_on_loan.count)
  end

  def test_customer_takes_book__successful
    @library.add_book(@book1)
    @library.lend_book(@book1, @customer1)
    assert_equal(1, @customer1.books.count)
  end

  def test_lend_book_due_date_updates
    # binding.pry
    @library.add_book(@book1)
    @library.lend_book(@book1, @customer1)
    assert_equal(Date.today + 21, @book1.on_loan_until_date)
  end




end
