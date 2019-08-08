require('minitest/autorun')
require('minitest/rg')
require_relative('../library')
require_relative('../book')
require_relative('../customer')

class TestLibrary < MiniTest::Test

  def setup
    @library = Library.new('Central Library')
    @book1 = Book.new('1', 'To Kill a Mockingbird')
    @book2 = Book.new('2', '1984')
    @book3 = Book.new('3', 'Orlando')
  end

  def test_get_library_name
    assert_equal('Central Library', @library.name)
  end

  def test_library_starts_with_no_books
    assert_equal(0, @library.books.count)
  end

  def test_library_can_add_book
    @library.add_book(@book1)
    @library.add_book(@book2)
    assert_equal(2, @library.books.count)
  end


end
