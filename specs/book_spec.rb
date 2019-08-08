require('minitest/autorun')
require('minitest/rg')
require_relative('../book')
require_relative('../library')
require_relative('../customer')

class TestBook < MiniTest::Test

  def setup
    @book1 = Book.new('1', 'To Kill a Mockingbird')
  end

  def test_get_book_reference
    assert_equal('1', @book1.reference())
  end

  def test_get_book_title
    assert_equal('To Kill a Mockingbird', @book1.title())
  end

  def test_book_is_available
    assert_nil(@book1.on_loan_until_date, msg=nil)
  end

end
