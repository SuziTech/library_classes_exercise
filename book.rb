class Book

  attr_reader :reference, :title
  attr_accessor :on_loan_until_date

  def initialize(reference, title)
    @reference = reference
    @title = title
    @on_loan_until_date = nil
  end

end
