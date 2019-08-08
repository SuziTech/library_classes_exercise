class Book

  attr_reader :reference, :title, :on_loan_until_date

  def initialize(reference, title)
    @reference = reference
    @title = title
    @on_loan_until_date = nil
  end

end
