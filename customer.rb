class Customer

  attr_reader :name, :borrower_number, :books

  def initialize(name, borrower_number)
    @name = name
    @borrower_number = borrower_number
    @books = []
  end
end
