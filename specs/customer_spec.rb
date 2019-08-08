require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')

class TestCustomer < MiniTest::Test

  def setup
    @customer = Customer.new('John', '684')
  end

  def test_get_customer_name
    assert_equal('John', @customer.name)
  end

  def test_get_borrower_number
    assert_equal('684', @customer.borrower_number)
  end

  def test_customer_starts_with_no_books
    assert_equal([], @customer.books)
  end

end
